/*:
## Exercise: Replacing Bools
 
 The following struct describes a type of enemy in a game:
 */
enum weaponsEnemy {
    case none, sword, rubberMallet, LightSaber
    var weaponName: String{
        switch self{
        case .none:
            return "Punhos"
        case .sword:
            return "Espada"
        case .rubberMallet:
            return "Marreta de Guerra"
        case .LightSaber:
            return "Sabre de Luz"

        }
    }
}


struct Enemy {
    let name: String
    let strength: Int
    let speed: Int
    let weapon: weaponsEnemy
}

let DarthVader = Enemy(name: "Darth Vader", strength: 100, speed: 100, weapon: .LightSaber)

print("O grande \(DarthVader.name) ataca com sua \(DarthVader.weapon.weaponName) e causa \(DarthVader.strength) de Dano")

/*:
 As your game has developed, you’ve decided that your enemies might have more than one type of weapon.

 - callout(Exercise): Define an enum to represent the weapons an enemy might have: `none`, `sword`, `rubberMallet` and so on. Change the struct definition to use your new enum instead of a `Bool`.

[Previous](@previous)  |  page 19 of 21  |  [Next: Exercise: Counting Votes](@next)
 */
