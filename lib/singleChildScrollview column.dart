import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: SingleScroll(),));
}

class SingleScroll  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lets read a Story'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Cindrella',style: GoogleFonts.cabinCondensed(
            fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent,fontSize: 45),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
                child: Text("""
                Once upon a time, in a kingdom far away, lived a young girl named Cinderella.
                She was a kind and gentle soul, but her life was far from easy. After her father
                passed away, her stepmother and stepsisters treated her as a servant in her own 
                home, forcing her to do all the household chores.Cinderella's stepmother and stepsisters
                were selfish and mean, always belittling her and making her life miserable.
                Despite the hardships she faced, Cinderella never lost her kind nature and maintained hope
                 for a better future.

                One day, news arrived in the kingdom that a grand royal ball was to be held at
                 the palace.  The prince was searching for a bride, and every eligible young woman
                  in the kingdom was invited to attend.
                Cinderella's stepsisters were excited about the event, and they spent days preparing their outfits
                 and practicing their dance moves.

         Cinderella also longed to go to the ball, but her stepmother and stepsisters were determined to keep her 
         at home.
                As the night of the ball approached, Cinderella found herself alone and sad. That's when a little 
                bit of magic entered her life.

         With the help of her fairy godmother, Cinderella's rags were transformed into a beautiful gown, 
        and her plain shoes became delicate glass slippers. The fairy godmother warned her that the enchantment
         would only last until midnight.
        With a twinkle in her eye and a swirl of her wand, Cinderella was ready for the ball.

As Cinderella entered the palace, she caught the eye of everyone in the room, including the prince.
 They danced together, and Cinderella felt like she was living a dream. However, as the clock struck midnight, 
 she remembered the warning and had to leave the palace in a hurry, leaving behind one of her glass slippers.

The prince was captivated by Cinderella and determined to find her. He searched the kingdom,
 fitting the glass slipper on the foot of every young woman, hoping to find the one it truly belonged to.

Finally, the prince arrived at Cinderella's home. Her stepsisters tried to fit into the slipper, 
but it was too small for them. Then, Cinderella's turn came. 
The slipper fit perfectly, and her true identity was revealed. 
Overjoyed, the prince recognized her as the one he had been searching for.

Cinderella's stepmother and stepsisters were left in shock as Cinderella was taken to the palace
 to be with the prince.
 They had treated her poorly, and now she was living a life of happiness and love.

And so, Cinderella's kind heart and enduring hope had led her to a fairy tale ending. 
She married the prince, and they lived happily ever after, showing that even in the face of adversity,
 goodness and kindness can triumph, and dreams can come true.
                """
                ),
              ),
          ),

        ],
      ),
    );
  }
}
