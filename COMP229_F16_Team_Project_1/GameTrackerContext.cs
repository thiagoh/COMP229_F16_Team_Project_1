using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using COMP229_F16_Team_Project_1.Models;

namespace COMP229_F16_Team_Project_1 {
    public class GameTrackerContext : DbContext {

        public GameTrackerContext(string url) : base(url) { }

        public DbSet<Game> Games { get; set; }
        public DbSet<Team> Teams { get; set; }
        public DbSet<Week> Week { get; set; }
    }
}