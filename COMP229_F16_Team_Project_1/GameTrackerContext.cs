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

        //protected override void OnModelCreating(DbModelBuilder modelBuilder) {
        //    modelBuilder.Entity<Game>()
        //                .HasRequired(m => m.team1)
        //                .WithMany(t => t.HomeMatches)
        //                .HasForeignKey(m => m.team1Id)
        //                .WillCascadeOnDelete(false);

        //    modelBuilder.Entity<Game>()
        //                .HasRequired(m => m.GuestTeam)
        //                .WithMany(t => t.AwayMatches)
        //                .HasForeignKey(m => m.GuestTeamId)
        //                .WillCascadeOnDelete(false);
        //}
    }
}