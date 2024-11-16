using System.ComponentModel.DataAnnotations;

namespace WEB_API.Model
{
    public class Department
    {
        [Key]
        public int DepartmentId { get; set; }

        public string DepartmentName { get; set; }
    }
}
