// 05. Login

// Prompts the user to type a username and sets its password to the same word backwards, for example log -> gol.
// The user has 3 attempts to write the correct password. 
// A successful login will print "User {user} logged in."
// An unsuccessful login will print "Incorrect password. Try again.",
// or if after 3 attemts the password is still wrong the console will print "User {user} blocked!"

string? user = null;
while (user == null)
{
    user = Console.ReadLine();
}

string password;
bool passwordIsTrue = false;
int attempts = 0;
do
{
    password = Console.ReadLine();
    int j = 0;
    if (password.Length < user.Length)
    {
        passwordIsTrue = false;
    }
    else
    {
        for (int i = user.Length - 1; i > 0; i--)
        {
            passwordIsTrue = password[j] == user[i];
            if (passwordIsTrue == false)
            {
                break;
            }
            j++;
        }
    }

    if (!passwordIsTrue)
    {
        if (attempts < 3)
        {
            Console.WriteLine("Incorrect password. Try again.");
        }
        else
        {
            Console.WriteLine($"User {user} blocked!");
        }
        attempts++;
    }
}
while (attempts < 4 && passwordIsTrue == false);

if (passwordIsTrue)
{
    Console.WriteLine($"User {user} logged in.");
}

