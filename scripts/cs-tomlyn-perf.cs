using System.Globalization;
using Tomlyn.Helpers;
using Tomlyn.Model;
using Tomlyn;

public class TomlynDecoder {
     public static void Main(string[] args) {
        string t = File.ReadAllText(args[0]);
        object? toml = null;
        System.Diagnostics.Stopwatch? watch = null;
        try {
            watch = System.Diagnostics.Stopwatch.StartNew();
            toml = Toml.Parse(t).ToModel();
            watch.Stop();
        } catch (Exception exc) {
            Console.Error.WriteLine(exc);
            Environment.Exit(1);
        }

        Console.WriteLine($"{watch.Elapsed.Milliseconds / 1000.0}");
    }
}
