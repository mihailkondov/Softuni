// 08. Collection Hierarchy

using _08.CollectionHierarchy.Core;
using _08.CollectionHierarchy.IO;
using _08.CollectionHierarchy.IO.Interfaces;

IReader reader = new ConsoleReader();
IWriter writer = new ConsoleWriter();
Engine engine = new Engine(reader, writer);

engine.Run();