using System.Text.RegularExpressions;

namespace _06.ExtractEmails
{
    internal class Program
    {
        static void Main(string[] args)
        {

            /* 
             Given Input:
                string input = "Please contact us at: support@github.com.Just send email to s.miller@mit.edu and j.hopking@york.ac.uk for more information. Examples of valid emails: info@softuni-bulgaria.org, kiki@hotmail.co.uk, no-reply@github.com, s.peterson@mail.uu.net, info-bg@software-university.software.academy. Examples of invalid emails: --123@gmail.com, …@mail.bg, .info@info.info, _steve@yahoo.cn, mike@helloworld, mike@.unknown.soft., s.johnson@invalid-";    

             Expected output:
                support@github.com
                s.miller@mit.edu
                j.hopking@york.ac.uk
                info@softuni-bulgaria.org
                kiki@hotmail.co.uk
                no-reply@github.com
                s.peterson@mail.uu.net
                info-bg@software-university.software.academy
             */
            // Read input
            string input = Console.ReadLine();

            // Match
            string[] emails = Regex.Matches(input,
                @"(?<user>(?<=^|\s)[A-Za-z]([A-Za-z0-9-\._])*)@(?<host>([A-Za-z]([A-Za-z-]*[A-Za-z])*)(\.[A-Za-z]([A-Za-z-]*[A-Za-z])*)+)(?<![-])")
                .Select(m => m.ToString())
                .ToArray();
            /*
             Some explainations:

             ?<user> this is just naming the group. Same goes for ?<host>
            (?<=^|\s) email is preceeded by string start or white space
            (?<![-]) email is not directly followed by -. I find it very difficult to write a regex that distinguishes when the email ends with . (a typo in the text) and when a sentence ends (then it makes sense that the email is written like this user@domain.com.) The - rule makes very litte sense in general, but it helps me solve this particular task.
             */

            // Print result
            foreach (string email in emails)
            {
                Console.WriteLine(email);
            }
        }
    }
}
