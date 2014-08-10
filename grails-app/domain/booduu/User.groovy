package booduu

class User {

    String userId;
    String password
    Profile profile
    Date dateCreated

    static hasMany = [ posts : Post, following : User ]

    static constraints = {
        userId(size:3..20, unique: true)
//        password(size: 3..20, validator: { passwd, user ->
//            passwd != user.userId
//        })
        password(size: 3..20)
        dateCreated()
        profile(nullable: true)
    }

    static mapping = {
        profile lazy:false
    }
}
