using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;

namespace hw09
{
    class Program
    {
        static void Main(string[] args)
        {
            using (LibraryContext context = new LibraryContext())
            {
                var list = context.Books.Include(u => u.Author).ToList();
                foreach (var item in list)
                {
                    Console.WriteLine($"{item.Title} ({item.Author.Name})");
                }
            }
        }
    }
}
