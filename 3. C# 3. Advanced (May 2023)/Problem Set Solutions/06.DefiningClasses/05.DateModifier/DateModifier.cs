
namespace _05.DateModifier
{
    public static class DateModifier
    {
        private static Dictionary<int, int> month = new()
        {
            { 1, 31 }, // January
            { 2, 28 }, // February
            { 3, 31 }, // March
            { 4, 30 }, // April
            { 5, 31 }, // May
            { 6, 30 }, // June
            { 7, 31 }, // July
            { 8, 31 }, // August
            { 9, 30 }, // September
            { 10, 31 }, // October
            { 11, 30 }, // November
            { 12, 31 }, // December
        };

        public static int DateDiff(string date1, string date2)
        {
            string[] datesInOrder = new string[] { date1, date2 }.OrderBy(d => d).ToArray();

            int[] a1 = datesInOrder[0].Split(' ').Select(int.Parse).ToArray();
            int[] a2 = datesInOrder[1].Split(' ').Select(int.Parse).ToArray();

            int y1 = a1[0];
            int y2 = a2[0];
            int m1 = a1[1];
            int m2 = a2[1];
            int d1 = a1[2];
            int d2 = a2[2];

            int dayDiff = 0;
            int monthDiff = 0;
            int yearDiff = 0;

            // if same month just take the difference between dates
            if (y1 == y2)
            {
                if (m1 == m2)
                {
                    dayDiff = d2 - d1;
                }
                else // 
                {
                    int timeToEndOfMonth = month[m1] - d1;
                    int timeFromFinalMonth = d2;
                    int timeInbetween = DayDiffBetweenMonths(m1 + 1, m2 - 1);
                    dayDiff = timeToEndOfMonth + timeInbetween + timeFromFinalMonth;
                }
            }
            else // y1 != y2
            {
                // Calculate days from the starting year
                int timeToEndOfMonth = month[m1] - d1;
                dayDiff += timeToEndOfMonth;

                if (m1 != 12)
                {
                    monthDiff += DayDiffBetweenMonths(m1 + 1, 12);
                }

                // Calculate days from the whole years between the starting year and the final year
                if (y2 - y1 > 1)
                {
                    yearDiff += 365 * (y2 - (y1 + 1));
                }

                // Calculate days from the ending year
                dayDiff += d2;
                if (m2 != 1)
                {
                    monthDiff += DayDiffBetweenMonths(1, m2 - 1);
                }
            }

            // Calculate leap year effects:
            int leapEffect = 0;
            // Leap year effects, taking into account that
            //      every 4th year is a leap year,
            //      but every 100th isn't,
            //      as long as it isn't also a 400th year, which is always a leap year:
            // HOWEVER, in this exercise leap years are concidered years divisible by 4. 


            // period within the same year - check if 29th of Feb is included
            if (y1 == y2 && IsJulianLeapYear(y1))
            {
                if (m1 <= 2 && m2 > 2)
                {
                    leapEffect++;
                }
            }
            else // period spans over at least 2 different years 
            {
                // check if leapday from 1st year is included
                if (IsJulianLeapYear(y1) && m1 <= 2)
                    leapEffect++;

                // check if leapday from final year is included
                if (IsJulianLeapYear(y2) && m2 > 2)
                    leapEffect++;

                // check for leapdays in the years between
                for (int y = y1 + 1; y < y2; y++)
                {
                    if (IsJulianLeapYear(y))
                        leapEffect++;
                }
            }

            return dayDiff + monthDiff + yearDiff + leapEffect;
        }

        /// <summary>
        /// Sums the day difference between the 1st of m1 and the last day of m2.
        /// </summary>
        /// <param name="m1">First whole month to be included</param>
        /// <param name="m2">Last whole month to be included</param>
        /// <returns></returns>
        private static int DayDiffBetweenMonths(int m1, int m2)
        {
            int days = 0;
            for (int i = m1; i <= m2; i++)
            {
                days += month[i];
            }
            return days;
        }

        private static bool IsJulianLeapYear(int year)
        {
            return year % 4 == 0;
        }

        private static bool IsGregorianLeapYear(int year)
        {
            bool leap = (year % 4 == 0);
            if (year % 100 == 0) { leap = false; }
            if (year % 400 == 0) { leap = true; }
            return leap;
        }
    }
}
