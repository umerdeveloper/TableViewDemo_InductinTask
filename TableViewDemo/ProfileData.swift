class ProfileData {
    
    let imageURL: String = "https://i.ya-webdesign.com/images/profile-image-png-14.png"
    
    let namesArray: [String] = [ "Mohammad", "Abu Bakar", "Umer Farooq", "Usman Ghani", "Ali Raza",
                                "Hassan", "Hussain", "Zubair", "Abdullah", "Jafar",
                                "Zain Ali", "Sufyan Yaqoob", "Habib-ur-Rehman", "Usman Azmat", "Umer Khan", ]
    
    let descArray: [String] = [ "Last Prophet of Allah",
                               "First Friend of Mohammad and I love  Mohammad.",
                               "The brave man and very famous personality in world. i love Umer Farooq R.A and what about you.",
                               "Select the bio label and press the Pin button at the bottom of your storyboard. In this menu, select the four dotted lines towards the top of the menu.",
                               "First Friend of Mohammad Select the bio label and press the Pin button at the bottom of your storyboard. In this menu, select the four dotted lines towards the top of the menu.",
                               "First Friend of Mohammad",
                               "First Friend of Mohammad",
                               "First Friend of Mohammad",
                               "First Friend of Mohammad",
                               "First Friend of Mohammad Select the bio label and press the Pin button at the bottom of your storyboard. In this menu, select the four dotted lines towards the top of the menu.",
                               "First Friend of Mohammad",
                               "First Friend of Mohammad",
                               "First Friend of Mohammad",
                               "First Friend of Mohammad Select the bio label and press the Pin button at the bottom of your storyboard. In this menu, select the four dotted lines towards the top of the menu.",
                               "First Friend of Mohammad", ]
    
    
    func returnNumberOfRows() -> Int {
        return namesArray.count
    }
}
