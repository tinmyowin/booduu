package booduu

class PostController {

    def scaffold = true
    /**
     *news seen without logged in
     */
    def news = {
        def allposts = Post.list()
        def user
        if(params.id){
            user = User.findByUserId(params.id)
        }
        else{
            user = session.user
        }
        [posts : allposts,
        user: user,
        tag: Tag]
    }

    def timeline = {
        def allposts = Post.list()
        [posts : allposts
        ]
    }

    def labeledPost = {
        def tagname = params.id
        def tag = Tag.findByName(tagname)
        def posts = Post.withCriteria {
            tags{
                eq('id', tag.id)
            }
        }
        [posts : posts]
    }

    def addPost = {
        println "params" + params.toString()
        def user = User.findByUserId(params.id)
        try{
            if (user) {
                def post = new Post(params)
                params.tagnames.each{tagname->
                    println "tagname = " + tagname
                    def tag = Tag.findByName(tagname)
                    if(tag){
                        post.addToTags(tag);
                    }
                    else{
                        post.addToTags(new Tag(name : tagname))
                    }
                }

//                post.userId = user.userId;
//                println params.toString()

                user.addToPosts(post)

                if (user.save()) {
                    post.save(flush: true, failOnError: true)
//                    println post.dateCreated + ",id = " + post.id + ", User = " + post.user  + ", Content = " + post.content + ", Subject = " + post.subject + ", tag = " + post.tags
                    flash.message = "Successfully created Post"
                } else {
                    user.discard()
                    flash.message = "Invalid or empty post"
                }
            }
            else {
                flash.message = "Invalid User Id"
            }
        }catch(Exception e){
            flash.message = e.toString()
        }
        redirect(action: 'news', id: params.id)
    }

}
