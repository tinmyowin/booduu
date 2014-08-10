package booduu

class Profile {
    static belongsTo = User

    byte[] photo

    String fullName
    String bio
    String homepage
    String email
    String country

    static constraints = {
        fullName(nullable: true)
        bio(nullable: true, maxSize: 1000)
        homepage(url: true, nullable: true)
        email(email: true, nullable: true)
        photo(nullable: true, maxSize: 16777215)
        country(nullable: true)
    }

    String toString() {
        "Profile for ${fullName} (${id})"
    }
}
