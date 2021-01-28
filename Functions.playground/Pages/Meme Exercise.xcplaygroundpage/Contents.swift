/*:
## Functional Meme
 
 Think of a fun song or meme that you've heard or seen recently. Try to think of one with repetitive parts. For example:
 
- A song with a repeated chorus.
- A meme that repeats a word or phrase.
- A song that repeats a line over and over.
 
 Write out the song or meme using `print` statements, then look for patterns and repetition, and choose groups of lines to combine into functions. This is a free-form exercise, so you can do whatever you like.
 */
print("Dog goes woof")
print("Cat goes meow")
print("Bird goes tweet")
print("And mouse goes squeek")
print("Cow goes moo")
print("Frog goes croak")
print("And the elephant goes toot")
print("Ducks say quack")
print("And fish go blub")
print("And the seal goes ow ow ow")
print("But there's one sound")
print("That no one knows")
questaoQueAssolaAHumanidade()
respostaAQuestaoQueAssolaAHumanidade(frase: "GeRing-ding-ding-ding-dingeringeding!")
questaoQueAssolaAHumanidade()
respostaAQuestaoQueAssolaAHumanidade(frase: "Wa-pa-pa-pa-pa-pa-pow!")
questaoQueAssolaAHumanidade()
respostaAQuestaoQueAssolaAHumanidade(frase:"Hatee-hatee-hatee-ho!")
questaoQueAssolaAHumanidade()
respostaAQuestaoQueAssolaAHumanidade(frase:"Joff-tchoff-tchoffo-tchoffo-tchoff!")
questaoQueAssolaAHumanidade()


func questaoQueAssolaAHumanidade(){
    print("What the Fox Say?")
}

func respostaAQuestaoQueAssolaAHumanidade(frase: String){
    var contador = 0
    if contador < 2{
        print(frase)
        contador += 1
    }
}

/*:
Next, make the meme your own.

[Previous](@previous)  |  page 11 of 12  |  [Next: Personal Meme](@next)
 */
