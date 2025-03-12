
using System.Runtime.CompilerServices;
using System.Xml.Linq;

namespace _05.FootballTeamGenerator
{
    internal static class ErrorMessages
    {
        public const string NameEmptyExceptionMessage = "A name should not be empty.";
        public const string StatValidationError = "{0} should be between {1} and {2}.";
        public const string PlayerMissingError = "Player {0} is not in {1} team.";
        public const string TeamMissingError = "Team {0} does not exist.";
    }
}
