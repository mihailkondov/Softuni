using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EFCoreProjectCodeFirst.Data.Models
{
    public class Student
    {
        [Key]
        [Required]
        public int Id { get; set; }

        [Required]
        public string FirstName { get; set; }

        [Required]
        public string LastName { get; set; }

        [ForeignKey(nameof(House))]
        public int HouseId { get; set; }
        public House House { get; set; }

    }
}
