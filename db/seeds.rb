puts "🌱 Seeding data..."

Notebook.destroy_all
User.destroy_all

puts "Seeding Users..."

User.create!(username: "acrespo", first_name: "adam", last_name: "crespo", bio: "i am adam, hello", email: "adam.crespo@email.com", picture: "https://ca.slack-edge.com/T02MD9XTF-U0308PF9CQP-3cca5d945c67-512")
User.create!(username: "cleonard", first_name: "Calypso", last_name: "Leonard", bio: "i am a full time SE student at the Flatiron School", email: "calypso.leonard@email.com", picture: "https://ca.slack-edge.com/T02MD9XTF-U02UH8CSYGN-032fdc3ed34f-192")
User.create!(username: "wliu", first_name: "william", last_name: "liu", bio: "i am william aka tha real will-i-am", email: "william@igottafeelin.com", picture: "https://ca.slack-edge.com/T02MD9XTF-U02SHR9GT6U-6aabe560127a-192")
User.create!(username: "chamernick", first_name: "Caleb", last_name: "Hamernick", bio: "Making things in NYC", email: "caleb@hamernick.com", picture: "https://ca.slack-edge.com/T02MD9XTF-U0308PFKVGX-d709024abba2-72")


puts "Seeding Notebooks..."

Notebook.create!(title: "Blogs")
Notebook.create!(title: "Thoughts")
Notebook.create!(title: "Code notes")
Notebook.create!(title: "How to make funny faces - a guide")

puts "Seeding Notes..."

Note.create!(title: "The Joy of Snipping", notebook_id: 1, user_id: 2 , body: "The Joy of Snipping
    
    The Joy of Snippets
    
    An image of snippets in use
    For some reason, when I started coding in college I actively resisted a whole slew of creature comforts that would have made my life just a little bit more convenient. I stuck mostly to a single screen, moving back and forth between my text editor and my terminal, instead of pulling out a second monitor to work from. I’d work from virtual machines and avoided customizing my coding environment more than strictly necessary. I’m not entirely sure where that puritanical attitude came from, and I can’t say it did me, my comprehension, or my efficiency any good.
    I’ve been trying to get rid of that habit lately, given that I have returned to coding for several hours a day by entering the Flatiron Software Engineering program. From the off I’ve tried to treat myself a bit better, with a focus on building effective code rather than building in the most austere environment I can create for myself. One big indulgence I’ve been allowing myself lately is using a lot of large and small scale snippets.
    For the uninitiated, snippets are chunks of code, usually built up with a few generic placeholders, that you can use repeatedly to help build out larger programs and apps. To be fair, that’s a definition that also applies to, say, functions, objects, and components, but bear with me for a moment. The thing that makes snippets lovely is the fact that you can write them globally in your text editor, meaning that you can use them to avoid retyping familiar processes all over the place. Essentially, you can write out a prototype in a specified format just once, and then just keep calling on the same shorthand for as long as you’re using that editor.
    You can learn more about the process of setting up a snippets file in VSCode here — the process is straightforward, and will be pretty similar in most text editors. Once you’ve set up a document with your global snippets, you can start filling it in with snippets you find online (like right here!), or you can ask your coder friends if they have any snippets they like using, or you can even build your own! The structure is very easy to understand once you’ve seen a few examples — essentially you’re building up a stringified object with some information about the snippet, and a “body” header that includes all the base code that you’ll be reusing.
    EXAMPLES:
    There are two main camps of snippets that I use: larger, more complex processes that I use once or twice per project, and smaller, simpler chunks of syntax that I use over and over again throughout the day.
    Here are a couple of examples of larger snippets that I’ve either written myself or adopted and adjusted from friends:
    UseFetch
    As I practiced more and more React projects, I found myself constantly setting up the initial data with a simple UseEffect that fetched from a database and set my base data to state. So I built out this useEffect snippet to save myself the time of rewriting the necessary logic. I set the prefix (the term you use to call a snippet) to ‘useFetch’ to make sure that the suggestion would pop up when i went to type ‘useEffect’ but that I would be able to distinguish it from any other useEffect snippets I might come up with down the line.
    
    Another chunk of code that I found myself writing up repeatedly in React apps — a function that makes a fetch request to update data in a server, and also updates the data in state based on what is returned from the fetch. Generally, I have only been using this function once per project, but given that the syntax is a little bit fiddly, and I feel that I’ve managed to get this particular function to be both readable and efficient, it definitely felt worth it for me to take the time to write it out as a snippet.
    For a few examples of shorter snippets that I use more frequently, I’ll turn to Ruby, which is a language I’m in the process of learning. As I learn new concepts and syntax in Ruby, I’ve been writing out snippets, and updating them over time as I improve my understanding of best practices and my own preferences for the language. I’ve actually found it to be a great way to practice abstracting away from specific examples to notice my own usage trends as well!
    single and multi line .map methods
    
    I’m really loving Ruby so far, but I haven’t loved constantly typing ‘end’ to finish off all my blocks, so I’ve written a LOT of very short snippets that will automatically put the ‘end’ in for me when I write any line that will start a block. Here’s two short examples of that — a single and multi line .map. Even though there is almost no logic in these snippets, I use them all the time when iterating over arrays, and they stop me from having to do another error catch because I have the syntax written correctly every time.
    I’ve actually found myself writing snippets for if blocks and method definitions as well, just to be sure my blocks get ends in all the right places!
    After seeing a few examples, I hope you’re feeling ready to try out this lovely time saving little hacks! When starting out with snippets, it’s good to stick to a couple basic rules:
    If you keep having to type something basic that you can see yourself using a lot as you code, spend the 4 minutes to make a snippet of that syntax.
    For larger, more complex logic, make sure that you understand the whole process very clearly before you start using a snippet to build it out. If you don’t understand exactly what every line in a snippet is doing, it’ll be a lot harder for you to debug.
    Don’t add more than a few at once or you’ll forget they exist and end up wasting your own time twice!
    Choose your prefixes well — you want them to pop up quickly when you’re going to write the same syntax longform, and you want to know exactly what they’ll do from one glance.")


Note.create!(title: "Recipes for good code", notebook_id: 1, user_id: 2 , body: "Recipes for good code

    A classic quarantine sourdough!
    When I need to take a break from working at a computer screen, one of my favorite pastimes is cooking. I love to read about new techniques, or taste new things, and then use what I've learned to develop my own recipes. Not to mention, my penchant for tweaking and testing tends to result in a new batch of cookies or a fresh loaf of bread every few days, which is an added bonus for my roommates.
    As it turns out, the lessons that I learned in all that time away from my laptop have been incredibly instructive for me as I continue to develop my skills as a software engineer — there are some very useful parallels between building good code and making good food.
    The parallels start at the premise, given that recipes are essentially simple algorithms that call for a specific input, say a few eggs, some spices, and a can of crushed tomatoes, and convert those ingredients into a predictable output, like a delicious shakshuka.
    A dish of shakshuka on a wooden table
    Here are a few lessons I learned from cooking that I find myself using when I’m coding:
    Planning: Look at your big picture goals, and break them down into smaller sections.
    When you first think about a dish you want to make, you need to break down your goal into identifiable and discrete parts. You want to recreate that incredible Spaghetti Bolognese your cousin made last week? Awesome! What do you need to make that happen?
    From tasting it, you know you need pasta, tomato sauce, ground meat, and maybe some parmesan cheese, but if you chuck all those ingredients together raw, you’ll end up with a pretty convoluted stew. If you take the time to think through each major component, and how you want that to taste, and then put them all together when they’re ready, you’ll probably be happier with the result.
    In the same way, if you have a brilliant idea for a new website, you need to figure out the major building blocks of the concept before you dive into the code. If you just take the essential parts of what you want and toss them together in a single massive function, you might end up with a working product, but it will be a lot less tasty (not to mention less readable and much harder to edit) than a carefully composed dinner.
    Incidentally, the same principle applies when you’re trying to figure out what went wrong.
    Fixing: test each part to find out what doesn’t work.
    When you’re trying out a new recipe, or developing a new program, you’re going to end up with a few disasters. But the way to fix them is not to balk at a few error codes and burnt edges, and then toss the whole thing in the trash — you need to parse through and identify what individual parts worked well and what went wrong so you can improve the overall product.
    Is the polenta too salty? Did you overcook the eggs? Did your forEach function run though the wrong array?
    When your food doesn’t come out right, you need to taste each part and decide what’s edible and what should be edited out.
    When your code doesn’t run correctly, you need to find a way to get each function to tell you what it’s doing, so you can separate the successes from the failures. Print the same variable after each step in that drawn-out conditional, console.log after every interaction on the page, comment out everything that’s throwing an error and then put the program back together piece by piece.
    The key is to remember what each helper function and each block of code is meant to add to the whole, and then check if and when it’s doing that. I like to toss some spinach into my sauces at the last minute, so it can pick up the flavor but still add a bit of texture. If I toss it in too early, let it wilt too far, I’ll think the whole meal was too mushy. When I think about how to make it better, I need to remember why the spinach is there, what it’s meant to do, and how I should be using it so it works in the dish.
    Of course, no one wants to spend hours toiling over a hot keyboard, only to get back a garbled mess of compiler errors and logic failures, and there’s an easy way to avoid it.
    Making: Taste test as you go.
    If you burn the garlic, ignore the smell, and just toss the eggplant into the pot anyway, your curry is just going to taste like burnt garlic. If you write some code that overwrites your main database, and then set it loose on your brand new site, you’re going to have a few issues down the line.
    Taste everything, every step of the way. Make sure there’s not too much pepper in the pesto before it goes on the chicken. Make sure that case base is solid before you feed in a recursive line.
    And when you’re doing that,
    Always: Keep your end goal in mind.
    Figure out how to make each piece work on its own, and keep testing to make sure everything is doing what you want it to do, but always remember where it’s going to meet back up with the larger whole. If I make a perfectly balanced sauce that tastes just how I want it all on its own, it could easily end up a bit too bland once I add in the veggies or put it over some rice. I need to remember not just that each small section needs to run without throwing any errors, but that each component needs to hand data over to its children in a way that can be cleanly processed.
    Ultimately, coding and cooking call for a clear vision of the end product, an understanding of the constituent parts, and attention while working to keep everything from crashing before you can put it all together. Of course, coding is great because you can rewrite each tricky line over and over and test it right away, without having to turn the oven back on. But I am looking forward to the day I can type in a few commands and actually taste the results.
    Chai Spiced Cinnamon rolls in a baking tin")



Note.create!(title: "title", notebook_id: Notebook.all.sample.id, user: User.all.sample , body: "Lorem Ipsum")
Note.create!(title: "title", notebook_id: Notebook.all.sample.id, user: User.all.sample , body: "Lorem Ipsum")
Note.create!(title: "title", notebook_id: Notebook.all.sample.id, user: User.all.sample , body: "Lorem Ipsum")
Note.create!(title: "title", notebook_id: Notebook.all.sample.id, user: User.all.sample , body: "Lorem Ipsum")
Note.create!(title: "title", notebook_id: Notebook.all.sample.id, user: User.all.sample , body: "Lorem Ipsum")





puts "✅ Done seeding!"
