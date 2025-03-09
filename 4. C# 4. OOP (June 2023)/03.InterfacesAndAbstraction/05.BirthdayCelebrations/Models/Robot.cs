// 05. Birthday Celebrations

namespace _05.BirthdayCelebrations
{
    public class Robot
    {
        public Robot(string model, string id)
        {
            Id = id;
            Model = model;
        }

        string Id { get; set; }
        string Model { get; set; }

        public bool Check(string fakePart)
        {
            if (this.Id.EndsWith(fakePart))
            {
                return false;
            }
            return true;
        }
    }
}
