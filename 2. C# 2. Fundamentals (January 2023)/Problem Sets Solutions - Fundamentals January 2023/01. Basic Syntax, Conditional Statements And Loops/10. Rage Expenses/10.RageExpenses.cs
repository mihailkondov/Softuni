// 10. Rage Expenses

int lostGamesCount = int.Parse(Console.ReadLine());
double pHeadset = double.Parse(Console.ReadLine());
double pMouse = double.Parse(Console.ReadLine());
double pKeyboard = double.Parse(Console.ReadLine());
double pDisplay = double.Parse(Console.ReadLine());

int trashedHeadsets = lostGamesCount / 2;
int trashedMouses = lostGamesCount / 3;
int trashedKeyboard = lostGamesCount / 6;
int trashedDisplay = lostGamesCount / 12;

double rageExpenses = trashedHeadsets * pHeadset
                    + trashedMouses * pMouse
                    + trashedKeyboard * pKeyboard
                    + trashedDisplay * pDisplay;
Console.WriteLine($"Rage expenses: {rageExpenses:F2} lv.");