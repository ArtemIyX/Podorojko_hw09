using System;
using System.Collections.Generic;

#nullable disable

namespace hw09
{
    public partial class Book
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int? Cost { get; set; }
        public int? Amount { get; set; }
        public int? AuthorId { get; set; }

        public virtual Author Author { get; set; }
    }
}
