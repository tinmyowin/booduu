package booduu

class Tag {

    String name

    static constraints = {
        name(blank: false, unique: true)
    }

    static hasMany = [ posts : Post ]

    //NB owned by post, so you can only do post.addToTags() not other way around
    static belongsTo = Post

}
