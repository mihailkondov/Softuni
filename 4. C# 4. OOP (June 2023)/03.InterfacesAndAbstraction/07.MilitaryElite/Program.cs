// 07. Military Elite

using _07.MilitaryElite.Enums;
using _07.MilitaryElite.Models;
using _07.MilitaryElite.Models.Interfaces;

List<Soldier> soldiers = new List<Soldier>();
string input = string.Empty;
while ((input = Console.ReadLine()!) != "End")
{
    string[] cmd = input.Split(' ', StringSplitOptions.RemoveEmptyEntries);
    Soldier soldier = null;
    switch (cmd[0])
    {
        case "Private":
            soldier = new Private(int.Parse(cmd[1]), cmd[2], cmd[3], decimal.Parse(cmd[4]));
            break;
        case "LieutenantGeneral":
            soldier = InitializeLieutenantGeneral(cmd, soldiers);
            break;
        case "Engineer":
            try
            {
                soldier = InitizlizeEngineer(cmd);
            }
            catch (Exception)
            {
                continue;
            }
            break;
        case "Commando":
            try
            {
                soldier = InitializeCommando(cmd);
            }
            catch (Exception)
            {
                continue;
            }
            break;
        case "Spy":
            soldier = new Spy(int.Parse(cmd[1]), cmd[2], cmd[3], int.Parse(cmd[4]));
            break;
    }

    // This should only be true when corps has invalid value
    if (soldier != null)
    {
        soldiers.Add(soldier);
    }
}

foreach (Soldier soldier in soldiers)
{
    Console.WriteLine(soldier.ToString());
}

Commando InitializeCommando(string[] cmd)
{
    // "Commando <id> <firstName> <lastName> <salary> <corps> < mission1CodeName > < mission1state > … < missionNCodeName > < missionNstate > " 
    bool isValidCorps = Enum.TryParse(cmd[5], out Corps corps);
    if (!isValidCorps)
    {
        throw new Exception();
    }

    int id = int.Parse(cmd[1]);
    string firstName = cmd[2];
    string lastName = cmd[3];
    decimal salary = decimal.Parse(cmd[4]);
    string corpsV = cmd[5];
    Commando commando = new Commando(id, firstName, lastName, salary, corps);
    for (int i = 6; i < cmd.Length; i += 2)
    {
        string codeName = cmd[i];
        bool validState = Enum.TryParse(cmd[i + 1], out State state);
        if (!validState)
        {
            continue;
        }
        IMission mission = new Mission(codeName, state);
        commando.AddMission(mission);
    }
    return commando;
}

Soldier InitizlizeEngineer(string[] cmd)
{
    // "Engineer <id> <firstName> <lastName> <salary> <corps> <repair1Part> < repair1Hours > … < repairNPart > < repairNHours > " 
    bool isValidCorps = Enum.TryParse(cmd[5], out Corps corps);
    if (!isValidCorps)
    {
        throw new Exception();
    }

    int id = int.Parse(cmd[1]);
    string firstName = cmd[2];
    string lastName = cmd[3];
    decimal salary = decimal.Parse(cmd[4]);
    Engineer engineer = new Engineer(id, firstName, lastName, salary, corps);
    for (int i = 6; i < cmd.Length; i += 2)
    {
        string partName = cmd[i];
        int hoursWorked = int.Parse(cmd[i + 1]);

        Repair repair = new Repair(partName, hoursWorked);
        engineer.AddRepair(repair);
    }
    return engineer;
}

Soldier InitializeLieutenantGeneral(string[] cmd, List<Soldier> soldiers)
{
    // Input looks like this:
    // LieutenantGeneral <id> <firstName> <lastName> <salary> < private1Id > < private2Id > … < privateNId >

    List<IPrivate> privates = new List<IPrivate>();
    for (int i = 5; i < cmd.Length; i++)
    {
        int id = int.Parse(cmd[i]);
        Soldier? lieutenantGeneralsPrivate = soldiers.FirstOrDefault(s => s.Id == id);
        if (lieutenantGeneralsPrivate != null)
        {
            IPrivate @private;
            try
            {
                @private = (Private)lieutenantGeneralsPrivate;
                privates.Add(@private);
            }
            catch
            {
                continue;
            }
        }
    }
    LieutenantGeneral lieutenantGeneral =
        new LieutenantGeneral(int.Parse(cmd[1]), cmd[2], cmd[3], decimal.Parse(cmd[4]), privates);

    return lieutenantGeneral;
}
