package booduu

/**
 * Created with IntelliJ IDEA.
 * User: tin
 * Date: 8/3/14
 * Time: 4:47 PM
 * To change this template use File | Settings | File Templates.
 */

class PhotoUploadCommand {
    byte[] photo
    String userId
}

class ImageController {

    def upload = { PhotoUploadCommand puc ->
        println "Starting upload"
        def user = User.findByUserId(puc.userId)
        println user.toString()
        println "photo size = " + puc.photo.size()
        user.profile.photo = puc.photo
        user.save()
        redirect(controller: 'user', action: 'profile', id: puc.userId)
    }

    def form = {
        // pass through to upload form
        [userList : User.list()]
    }

    def view = {
        // path through to "view photo" page
    }

    def renderImage = {
        println params.toString()
        def user = User.findByUserId(params.id)
        if (user && user?.profile?.photo) {
            println user.profile.photo.length
            response.setContentLength(user.profile.photo.length)
            response.getOutputStream().write(user.profile.photo)
        } else {
            response.sendError(404)
        }

    }
    def renderPostImage = {
        println params.toString()
        def post = Post.get(params.id)
        if (post && post?.image) {
            response.setContentLength(post.image.length)
            response.getOutputStream().write(post.image)
        } else {
            response.sendError(404)
        }

    }
}