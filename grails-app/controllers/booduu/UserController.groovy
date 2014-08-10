package booduu

class UserController {

    def scaffold = true

    def register = {
    }

    def registerUser={
        if (params) {
            def user = new User(params)
            if (user.validate()) {
                user.save()
                flash.message = "Successfully Create User"
                redirect(uri: '/')
            } else {
                flash.message = "Error Registering User"
                return [ user: user ]
            }
        }
    }

    def profile = {
        def user = session.user
        if (user) {
        println "User = " + user;
        println "Profile" + user.profile.toString()
        //                println "photo size = " + user.profile.photo.size();
        return [ profile : user.profile, userId : user.userId ]
        } else {
        response.sendError(404)
        }

    }

    def login = {
        def user = User.findByUserId(params.username)
        if(user){
            if (user.password == params.password){
                session.user =  user
                redirect(controller: "post", action: "news", id: user.userId)

            }
            else{
                render "Login failed"

            }
        }

    }

    def logout = {
        flash.message = "Goodbye ${session.user.profile.fullName}"
        session.user = null
        redirect(controller:"post", action:"timeline")
    }

}



