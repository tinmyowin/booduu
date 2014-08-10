package booduu

class Post {
    String subject
    String content
    byte[] image
    Date dateCreated

    static constraints = {
        subject(blank: false)
        content(blank: false)
        image(nullable: true, maxSize: 16777215)
        dateCreated(nullable: true)
    }

    static belongsTo = [ user : User ]

    static mapping = {
        sort dateCreated:"desc"
        version false
    }

    static hasMany = [tags : Tag ]
}
