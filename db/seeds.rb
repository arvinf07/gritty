# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Exercise.create(name: "Push-ups", difficulty: "Intermediate", equipment: 'None', image: "https://media1.giphy.com/media/5t9IcXiBCyw60XPpGu/giphy.gif",
description: "1.Get down on all fours, placing your hands slightly wider than your shoulders.
2.Straighten your arms and legs.
3.Lower your body until your chest nearly touches the floor.
4.Pause, then push yourself back up.
5.Repeat."
)

Exercise.create(name: "Squat Jacks", difficulty: "Intermediate", equipment: 'None', image: "https://media2.giphy.com/media/LQ2nGDJyfiGtqX7Cor/source.gif",
description: "1.Stand straight with your feet together and hands by your sides.
2.Jump up, spread your feet and bend your knees pressing your hips back.
3.Push through the heels to jump back up and return to the starting position.
4.Repeat until set is complete."
)

Exercise.create(name: "Lunges", difficulty: "Intermediate", equipment: 'None', image: "https://177d01fbswx3jjl1t20gdr8j-wpengine.netdna-ssl.com/wp-content/uploads/2019/05/walking-lunges-optimized.gif",
description: "1.Start by standing up tall.
2.Step forward with one foot until your leg reaches a 90-degree angle.
3.Lift your front lunging leg to return to the starting position.
4.Repeat until set is complete")

Exercise.create(name: "Pull-ups", difficulty: "Advanced", equipment: 'Pull up bar', image: "https://177d01fbswx3jjl1t20gdr8j-wpengine.netdna-ssl.com/wp-content/uploads/2019/05/walking-lunges-optimized.gif",
description: "1.Grab The Bar. Grip it about shoulder-width apart. 
2.Hang. Raise your feet off the floor by bending your knees. 
3.Pull yourself up by pulling your elbows down to the floor. 
4.Pass The bar.
5.Repeat.")

Exercise.create(name: "Crunch", difficulty: "Beginner", equipment: 'None', image: "https://i.imgur.com/UJAnRhJ.gif",
description: "1.Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale.
2.Exhale and lift your upper body, keeping your head and neck relaxed.
3.Inhale and return to the starting position.")

Exercise.create(name: "Calf Raises", difficulty: "Beginner", equipment: 'None', image: "https://thumbs.gfycat.com/EntireThatGazelle-max-1mb.gif",
description: "1.Spread feet shoulder-width apart, then slowly raise your heels, keeping your knees extended (but not locked). Pause for one second.
2.Slowly lower your heels back to the ground.
3.Repeat")


Exercise.create(name: "Seated Shoulder DB Press", difficulty: "Intermediate", equipment: 'Dumbbells', image: "https://thumbs.gfycat.com/PeacefulFastAmericanalligator-size_restricted.gif",
description: "1.Sit on an upright bench holding a dumbbell in each hand at shoulder height with your palms facing away from you.
2.Keep your chest up and your core braced, and look straight forward throughout the move.
3.Press the weights directly upwards until your arms are straight and the weights touch above your head.
4.Repeat")

Exercise.create(name: "DB Chest Press", difficulty: "Intermediate", equipment: 'Dumbbells', image: "https://thumbs.gfycat.com/ComfortableGloomyBengaltiger-max-1mb.gif",
description: "1.Hold two dumbbells with palms facing forward and your thumbs wrapped around the handle. 
2.On an inhale, lower the dumbbells slightly wider than your mid-chest, slowly and with control. 
3.Gently touch the dumbbells to your chest. On an exhale, press your arms upwards, keeping your elbows slightly bent.")

Exercise.create(name: "DB Deadlifts", difficulty: "Advanced", equipment: 'Dumbbells', image: "https://i.pinimg.com/originals/69/b9/cf/69b9cf8b3c0a6d971ce0e1ac83a17c03.gif",
description: "1.Stand with feet hip-width apart, holding dumbbells in front of hips, palms facing thighs.
2.Squeeze shoulder blades together to keep spine in a neutral position. Inhale, first hinging at the hips then knees to lower dumbbells along the front of legs, pausing when torso is parallel to the ground.
3.Exhale and drive through the mid-foot to return to standing, maintaining a neutral spine and keeping dumbbells close to the body throughout. Fully extend hips and knees, squeezing glutes at the top.")

Exercise.create(name: "DB Bicep Curls", difficulty: "Intermediate", equipment: 'Dumbbells', image: "https://i.pinimg.com/originals/69/b9/cf/69b9cf8b3c0a6d971ce0e1ac83a17c03.gif",
description: "1.Start standing with a dumbbell in each hand. Your elbows should rest at your sides and your forearms should extend out in front of your body.
2.Bring the dumbbells all the way up to your shoulders by bending your elbows.
3.Reverse the curl slowly and repeat.")
