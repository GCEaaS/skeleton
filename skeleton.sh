#This program is intended to teach or show basic examples of scripting for the CEAAS team
#Author mumichael@google.com  Revision 1


echo "Hello this is a script echo is printing whatever text is within the quotes, this is a great way to ask for a variable you want to set later in the script"
#The next line will read whatever response the user types into the prompt and then set that variable.  I am reading the input and calling it NAME we can then call this anytime with $NAME this should always be all caps
read NAME
#Explanation of echo with a called variable
echo "Hello $NAME, it's nice to meet you! we are calling the NAME variable that was prompted for earlier.  We can echo it out or set it into a later command like a gsuitl command or config file"

echo -n "The current time is : "
date

#You can use echo and read to cal for multiple variables to set in your script like 
echo "What is your favorite Game of Thrones Character"
read NORTHREMEBERS

#Lets grab a GCP variable to use later
echo "What would you like to call your Cloud Storage Bucket"
read BUCKET

#This will be an example of package installation in a script

#Add any custom or non standard PPA's firt this is an example of adding the Oracle Java repo to the machine notice the -y flag this is important as it requires no prompt from the user
sudo add-apt-repository ppa:webupd8team/java -y

#Always sudo apt-get update before calling any other software installation this ensures we are pulling the most recent installation canidate
#We do this after adding custom repos so we can ensure we pull that repos software in
sudo apt-get update

#Next we can install software example is installing Java from the Oracle repo
sudo apt install oracle-java8-set-default

#We can install standard software available in common repos
sudo apt-get install htop
sudo apt-get install vim
sudo apt-get install cowsay

#You can call variables set earlier in the script and write them to files, bashrc, config files etc
echo "$NAME" >> ~/information.txt


#Assuming gsuitl is installed on the machine you could call variables and pipe them into gsutil commands
gsutil mb gs://$BUCKET


#When your done exit out your script, remember this is just a rough begginer to what you can do with scripting
exit
