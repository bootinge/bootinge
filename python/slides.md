% Common mistakes
% Shawn
% Oct. 2014

# Inheritance

## forget key elements
- Subclass must use *extends* to inherit superclass
- Subclass constructor use *super()* to call the superclass's constructor

~~~~~~~~~ {.java .numberLines}
public class Post{
public Post(var1,var2){ //super(var1,var2)
.......;
}
.....;
}

public class MessagePost extends Post{
public MessagePost(var1,var2,var3){
super(var1,var2); // must be the same with Post constructor
.......;
}
}
~~~~~~~~~~

# Code duplication

##shared or not
- Put *shared* functions/methods in the superclass
- Leave *specific* functions/method in the subclass

~~~~~~~ {.java .numberLines}
public class Post{
private String timestamp; //<---shared field
public Post(...){...}
public String getTimeStamp(){...} //<---shared method
.......;
}

public class MessagePost extends Post{
private String timestamp; //<---duplicated field
public MessagePost(...){...}
public String getTimeStamp(){...} //<---duplicated method
public String writeMessage(var){...} //<---specific to MessagePost
.......;
}
~~~~~~~~

# Access private members

##private vs public
- Private members are only visible within the class where they are declared
- Use public method to access the private members

~~~~~~~ {.java .numberLines}
public class Post{
private String timestamp; //<---private field
public Post(...){...}
public String getTimeStamp(){return timestamp;} //<---public method
private void example(){...} //<---private method
.......;
}

public class MessagePost extends Post{
public MessagePost(...){...}
public void display(){
print(timestamp); //<---Wrong!
print(getTimeStamp()); //<---Right!
example(); //<---Wrong!
}
.......;
}
~~~~~~~~
