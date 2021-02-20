using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrabalhoIA
{
    class Program
    {
        static private string WORDSFILE = "texto.txt";     /* file with the terms to be stemmed, use quotation marks */
        static private string STEMSFILE = "saida.txt"; /* output file, use quotation marks */
        
        static private int ADV = 1;
        static private int AUG = 23;
        static private int NOUN = 86;
        static private int VERB = 103;
        static private int PLURAL = 11;
        static private int FEM = 15;
        static private int VOW = 7;

        private struct stem_struct
        {
            public char[] suffix;
            public int min_stem_size;
            public char[] replacement;
            public char[][] exceptions;
        };

        static void Main(string[] args)
        {
            StringBuilder word = new StringBuilder();
            char buf;
            int wlength, slength;
            StreamReader wordsfileptr;
            StreamWriter stemsfileptr;
            int i = 0;
            
            if ((wordsfileptr = new StreamReader(WORDSFILE,true)) == null)
            {
                Console.WriteLine("cannot open file");
            }
            else
            {
                if ((stemsfileptr = new StreamWriter(STEMSFILE, false)) == null)
                {
                    Console.WriteLine("cannot create file");
                }
                else
                {
                    while (!wordsfileptr.EndOfStream)
                    {
                        //    buf = (char)wordsfileptr.Read();
                        //    if (("\r\n\"'`1234567890-=¬!£$%^&*()_+ []{};'#:@~,./<>?").IndexOf(buf) == -1)
                        //    //if (char.IsLetter(buf) &&)
                        //    {
                        //        word.Append(buf);
                        //        i++;
                        //    }
                        //    else
                        word.Append(wordsfileptr.ReadLine());
                        if (true)
                        {
                            //if (buf == '\n' || buf == '\r')
                            //{
                            //    stemsfileptr.WriteLine();
                            //}
                            
                            i = 0;
                            if ((word != null) && (!word.ToString().Equals("")))
                            {
                                //for (int haha = 0; haha < word.Length; haha++)
                                //    word[i] = char.ToLower(word[i]);

                                stemsfileptr.Write(word.ToString() + " - ");

                                to_lower_case(word);
                                wlength = word.Length;

                                Console.Write("Word: " + word.ToString());

                                if (word[word.Length - 1] == 's' && (wlength >= 3))
                                    plural(word);

                                adverb(word);

                                if ((word[word.Length - 1] == 'a' || (word[word.Length - 1] == 'ã')) && (wlength >= 3))
                                    feminine(word);

                                augmentative(word);

                                if (!noun(word))
                                    if (!verb(word))
                                        thematic_vowel(word);

                                remove_accents(word);

                                stemsfileptr.WriteLine(word.ToString());
                                //stemsfileptr.Write(" ");
                                //System.IO.File.WriteAllText(STEMSFILE, word.ToString());
                                Console.Write("\tStem: " + word.ToString());
                                Console.WriteLine();
                            }

                            word.Clear();
                        }
                    }

                    if (wordsfileptr != null)
                        wordsfileptr.Close();

                    if (stemsfileptr != null)
                        stemsfileptr.Close();

                }
            }

        }

        private static void to_lower_case(StringBuilder word)
        {
            int i = 0;
            for (i = 0; i < word.Length; i++)
            {
                if ((word[i] >= 'A') && (word[i] <= 'Z'))
                    word[i] += (char)('a' - 'A');
                else
                    switch (word[i])
                    {
                        case 'É':
                            word[i] = 'é';
                            break;
                    }
            }
        }

        private static void remove_accents(StringBuilder s)
        {
            int i;
            i = s.Length - 1;

            while (i >= 0)
            {
                if (s[i] == 'á') s[i] = 'a';
                else if (s[i] == 'ó') s[i] = 'o';
                else if (s[i] == 'é') s[i] = 'e';
                else if (s[i] == 'ê') s[i] = 'e';
                else if (s[i] == 'í') s[i] = 'i';

                i--;
            }
        }

        private static void thematic_vowel(StringBuilder w)
        {
            List<stem_struct> vowel = new List<stem_struct>(){
                new stem_struct(){ suffix = "bil".ToCharArray(), min_stem_size = 2, replacement = "vel".ToCharArray() },
	            new stem_struct(){ suffix = "gue".ToCharArray(), min_stem_size = 2, replacement = "g".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "gangue".ToCharArray(),
                        "jegue".ToCharArray()
                    }.ToArray()
                },
	            new stem_struct(){ suffix = "á".ToCharArray(), min_stem_size = 3 },
                new stem_struct(){ suffix = "ê".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "bebê".ToCharArray()
                    }.ToArray()
                },
	            new stem_struct(){ suffix = "a".ToCharArray(), min_stem_size = 3,  replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "ásia".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "e".ToCharArray(), min_stem_size = 3 },
                new stem_struct(){ suffix = "o".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "ão".ToCharArray()
                    }.ToArray()
                }
            };

	        int i = 0;
            bool done = false;

	        while ((i<VOW) && (!done))
	        {
		        if (strip_suffix(w, vowel[i])) 
                    done = true;

		        i++;
	        }
        }

        private static bool verb(StringBuilder w)
        {
            List<stem_struct> verb_suffix = new List<stem_struct>() {
                new stem_struct(){ suffix = "aríamo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "ássemo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "eríamo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "êssemo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "iríamo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "íssemo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "áramo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "árei".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "aremo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "ariam".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "aríei".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "ássei".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "assem".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "ávamo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "êramo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "eremo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "eriam".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "eríei".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "êssei".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "essem".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "íramo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "iremo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "iriam".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "iríei".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "íssei".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "issem".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "ando".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "endo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "indo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "ondo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "aram".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "arão".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "arde".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "arei".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "arem".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "aria".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "armo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "asse".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "aste".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "avam".ToCharArray(), min_stem_size = 2,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "agravam".ToCharArray(),
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ávei".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "eram".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "erão".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "erde".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "erei".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "êrei".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "erem".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "eria".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "ermo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "esse".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "este".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "faroeste".ToCharArray(),
                        "agreste".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "íamo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "iram".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "íram".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "irão".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "irde".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "irei".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "admirei".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "irem".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "adquirem".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "iria".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "irmo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "isse".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "iste".ToCharArray(), min_stem_size = 4},
                new stem_struct(){ suffix = "iava".ToCharArray(), min_stem_size = 4,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "ampliava".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "amo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "iona".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "ara".ToCharArray(), min_stem_size = 2,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "arara".ToCharArray(),
                        "prepara".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ará".ToCharArray(), min_stem_size = 2,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "alvará".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "are".ToCharArray(), min_stem_size = 2,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "prepare".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ava".ToCharArray(), min_stem_size = 2,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "agrava".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "emo".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "era".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "acelera".ToCharArray(),
                        "espera".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "erá".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "ere".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "espere".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "iam".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "enfiam".ToCharArray(),
                        "ampliam".ToCharArray(),
                        "elogiam".ToCharArray(),
                        "ensaiam".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "íei".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "imo".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "reprimo".ToCharArray(),
                        "intimo".ToCharArray(),
                        "íntimo".ToCharArray(),
                        "nimo".ToCharArray(),
                        "queimo".ToCharArray(),
                        "ximo".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ira".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "fronteira".ToCharArray(),
                        "sátira".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ído".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "irá".ToCharArray() },
                new stem_struct(){ suffix = "tizar".ToCharArray(), min_stem_size = 4,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "alfabetizar".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "izar".ToCharArray(), min_stem_size = 5,replacement = "".ToCharArray(), exceptions =
                        new List<char[]>(){
                            "organizar".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "itar".ToCharArray(), min_stem_size = 5,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "acreditar".ToCharArray(),
                        "explicitar".ToCharArray(),
                        "estreitar".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ire".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "adquire".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "omo".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "ai".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "am".ToCharArray(), min_stem_size = 2},
                new stem_struct(){ suffix = "ear".ToCharArray(), min_stem_size = 4,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "alardear".ToCharArray(),
                        "nuclear".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ar".ToCharArray(), min_stem_size = 2,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "azar".ToCharArray(),
                        "bazaar".ToCharArray(),
                        "patamar".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "uei".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "uía".ToCharArray(), min_stem_size = 5, replacement = "u".ToCharArray()},
                new stem_struct(){ suffix = "ei".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "guem".ToCharArray(), min_stem_size = 3, replacement = "g".ToCharArray()},
                new stem_struct(){ suffix = "em".ToCharArray(), min_stem_size = 2,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "alem".ToCharArray(),
                        "virgem".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "er".ToCharArray(), min_stem_size = 2,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "éter".ToCharArray(),
                        "pier".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "eu".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "chapeu".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ia".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "estória".ToCharArray(),
                        "fatia".ToCharArray(),
                        "acia".ToCharArray(),
                        "praia".ToCharArray(),
                        "elogia".ToCharArray(),
                        "mania".ToCharArray(),
                        "lábia".ToCharArray(),
                        "aprecia".ToCharArray(),
                        "polícia".ToCharArray(),
                        "arredia".ToCharArray(),
                        "cheia".ToCharArray(),
                        "ásia".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ir".ToCharArray(), min_stem_size = 3,replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "freir".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "iu".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "eou".ToCharArray(), min_stem_size = 5},
                new stem_struct(){ suffix = "ou".ToCharArray(), min_stem_size = 3},
                new stem_struct(){ suffix = "i".ToCharArray(), min_stem_size = 3}
            };

            int i = 0;
            bool done = false;

            while ((i < VERB) && (!done))
            {
                if (strip_suffix(w, verb_suffix[i]))
                {
                    done = true;
                    return true;
                }

                i++;
                if (i >= VERB - 2)
                    return false;
            }

            return false;
        }

        private static bool noun(StringBuilder w)
        {
            List<stem_struct> noun_suffix = new List<stem_struct>(){
		        new stem_struct(){ suffix = "encialista".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "alista".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "agem".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "coragem".ToCharArray(),
                        "chantagem".ToCharArray(),
                        "vantagem".ToCharArray(),
                        "carruagem".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "iamento".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "amento".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "firmamento".ToCharArray(),
                        "fundamento".ToCharArray(),
                        "departamento".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "imento".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "mento".ToCharArray(), min_stem_size = 6, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "firmamento".ToCharArray(),
                        "elemento".ToCharArray(),
                        "complemento".ToCharArray(),
                        "instrumento".ToCharArray(),
                        "departamento".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "alizado".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "atizado".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "tizado".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "alfabetizado".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "izado".ToCharArray(), min_stem_size = 5, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "organizado".ToCharArray(),
                        "pulverizado".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ativo".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "pejorativo".ToCharArray(),
                        "relativo".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "tivo".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "relativo".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ivo".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "passivo".ToCharArray(),
                        "possessivo".ToCharArray(),
                        "pejorativo".ToCharArray(),
                        "positivo".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ado".ToCharArray(), min_stem_size = 2, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "grado".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ido".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "cândido".ToCharArray(),
                        "consolido".ToCharArray(),
                        "rápido".ToCharArray(),
                        "decido".ToCharArray(),
                        "tímido".ToCharArray(),
                        "duvido".ToCharArray(),
                        "marido".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ador".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "edor".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "idor".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "ouvidor".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "dor".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "ouvidor".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "sor".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "assessor".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "atoria".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "tor".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "benfeitor".ToCharArray(),
                        "leitor".ToCharArray(),
                        "editor".ToCharArray(),
                        "pastor".ToCharArray(),
                        "produtor".ToCharArray(),
                        "promotor".ToCharArray(),
                        "consultor".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "or".ToCharArray(), min_stem_size = 2, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "motor".ToCharArray(),
                        "melhor".ToCharArray(),
                        "redor".ToCharArray(),
                        "rigor".ToCharArray(),
                        "sensor".ToCharArray(),
                        "tambor".ToCharArray(),
                        "tumor".ToCharArray(),
                        "assessor".ToCharArray(),
                        "benfeitor".ToCharArray(),
                        "pastor".ToCharArray(),
                        "terior".ToCharArray(),
                        "favor".ToCharArray(),
                        "autor".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "abilidade".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "icionista".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "cionista".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "ionista".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "ionar".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "ional".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "ência".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "ância".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "ambulância".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "edouro".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "queiro".ToCharArray(), min_stem_size = 3, replacement = "c".ToCharArray() },
		        new stem_struct(){ suffix = "adeiro".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "desfiladeiro".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "eiro".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "desfiladeiro".ToCharArray(),
                        "pioneiro".ToCharArray(),
                        "mosteiro".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "uoso".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "oso".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "precioso".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "alizaç".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "atizaç".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "tizaç".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "izaç".ToCharArray(), min_stem_size = 5, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "organizaç".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "aç".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "equaç".ToCharArray(),
                        "relaç".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "iç".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "eleição".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ário".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "voluntário".ToCharArray(),
                        "salário".ToCharArray(),
                        "aniversário".ToCharArray(),
                        "diário".ToCharArray(),
                        "lionário".ToCharArray(),
                        "armário".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "atório".ToCharArray(), min_stem_size = 3 },
                new stem_struct(){ suffix = "rio".ToCharArray(), min_stem_size = 5, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "voluntário".ToCharArray(),
                        "salário".ToCharArray(),
                        "aniversário".ToCharArray(),
                        "diário".ToCharArray(),
                        "compulsório".ToCharArray(),
                        "lionário".ToCharArray(),
                        "próprio".ToCharArray(),
                        "stério".ToCharArray(),
                        "armário".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ério".ToCharArray(), min_stem_size = 6 },
		        new stem_struct(){ suffix = "ês".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "eza".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "ez".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "esco".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "ante".ToCharArray(), min_stem_size = 2, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "gigante".ToCharArray(),
                        "elefante".ToCharArray(),
                        "adiante".ToCharArray(),
                        "possante".ToCharArray(),
                        "instante".ToCharArray(),
                        "restaurante".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ástico".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "eclesiástico".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "alístico".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "áutico".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "êutico".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "tico".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "político".ToCharArray(),
                        "eclesiástico".ToCharArray(),
                        "diagnostico".ToCharArray(),
                        "prático".ToCharArray(),
                        "doméstico".ToCharArray(),
                        "diagnóstico".ToCharArray(),
                        "idêntico".ToCharArray(),
                        "alopático".ToCharArray(),
                        "artístico".ToCharArray(),
                        "autêntico".ToCharArray(),
                        "eclético".ToCharArray(),
                        "crítico".ToCharArray(),
                        "critico".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ico".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "tico".ToCharArray(),
                        "público".ToCharArray(),
                        "explico".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ividade".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "idade".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "autoridade".ToCharArray(),
                        "comunidade".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "oria".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "categoria".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "encial".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "ista".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "auta".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "quice".ToCharArray(), min_stem_size = 4, replacement = "c".ToCharArray() },
		        new stem_struct(){ suffix = "ice".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "cúmplice".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "íaco".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "ente".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "freqüente".ToCharArray(),
                        "alimente".ToCharArray(),
                        "acrescente".ToCharArray(),
                        "permanente".ToCharArray(),
                        "oriente".ToCharArray(),
                        "aparente".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ense".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "inal".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "ano".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "ável".ToCharArray(), min_stem_size = 2, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "afável".ToCharArray(),
                        "razoável".ToCharArray(),
                        "potável".ToCharArray(),
                        "vulnerável".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ível".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "possível".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "vel".ToCharArray(), min_stem_size = 5, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "possível".ToCharArray(),
                        "vulnerável".ToCharArray(),
                        "solúvel".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "bil".ToCharArray(), min_stem_size = 3, replacement = "vel".ToCharArray() },
		        new stem_struct(){ suffix = "ura".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "imatura".ToCharArray(),
                        "acupuntura".ToCharArray(),
                        "costura".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ural".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "ual".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "bissexual".ToCharArray(),
                        "virtual".ToCharArray(),
                        "visual".ToCharArray(),
                        "pontual".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ial".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "al".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "afinal".ToCharArray(),
                        "animal".ToCharArray(),
                        "estatal".ToCharArray(),
                        "bissexual".ToCharArray(),
                        "desleal".ToCharArray(),
                        "fiscal".ToCharArray(),
                        "formal".ToCharArray(),
                        "pessoal".ToCharArray(),
                        "liberal".ToCharArray(),
                        "postal".ToCharArray(),
                        "virtual".ToCharArray(),
                        "visual".ToCharArray(),
                        "pontual".ToCharArray(),
                        "sideral".ToCharArray(),
                        "sucursal".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "alismo".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "ivismo".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "ismo".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "cinismo".ToCharArray()
                    }.ToArray()
                } 
            };

            int i = 0;
            bool done = false;

            while ((i < NOUN) && (!done))
            {
                if (strip_suffix(w, noun_suffix[i]))
                {
                    done = true;
                    return true;
                }
                i++;
                if (i == NOUN - 2)
                    return false;
            }
            return false;
        }

        private static void augmentative(StringBuilder w)
        {
            List<stem_struct> aug_suffix = new List<stem_struct>() {
		        new stem_struct(){ suffix = "díssimo".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "abilíssimo".ToCharArray(), min_stem_size = 5 },
		        new stem_struct(){ suffix = "íssimo".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "ésimo".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "érrimo".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "zinho".ToCharArray(), min_stem_size = 2 },
		        new stem_struct(){ suffix = "quinho".ToCharArray(), min_stem_size = 4, replacement = "c".ToCharArray() },
		        new stem_struct(){ suffix = "uinho".ToCharArray(), min_stem_size = 4 },
		        new stem_struct(){ suffix = "adinho".ToCharArray(), min_stem_size = 3 },
		        new stem_struct(){ suffix = "inho".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "caminho".ToCharArray(),
                        "cominho".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "alhão".ToCharArray(),  min_stem_size = 4 },
		        new stem_struct(){ suffix = "uça".ToCharArray(),  min_stem_size = 4 },
                new stem_struct(){ suffix = "aço".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "antebraço".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "aça".ToCharArray(),  min_stem_size = 4 },
		        new stem_struct(){ suffix = "adão".ToCharArray(),  min_stem_size = 4 },
		        new stem_struct(){ suffix = "idão".ToCharArray(),  min_stem_size = 4 },
                new stem_struct(){ suffix = "ázio".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "topázio".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "arraz".ToCharArray(),  min_stem_size = 4 },
		        new stem_struct(){ suffix = "zarrão".ToCharArray(),  min_stem_size = 3 },
		        new stem_struct(){ suffix = "arrão".ToCharArray(),  min_stem_size = 4 },
		        new stem_struct(){ suffix = "arra".ToCharArray(),  min_stem_size = 3 },
                new stem_struct(){ suffix = "zão".ToCharArray(), min_stem_size = 2, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "coalizão".ToCharArray()
                    }.ToArray()
                },
                new stem_struct(){ suffix = "ão".ToCharArray(), min_stem_size = 3, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "camarão".ToCharArray(),
                        "chimarrão".ToCharArray(),
                        "canção".ToCharArray(),
                        "coração".ToCharArray(),
                        "embrião".ToCharArray(),
                        "grotão".ToCharArray(),
                        "glutão".ToCharArray(),
                        "ficção".ToCharArray(),
                        "fogão".ToCharArray(),
                        "feição".ToCharArray(),
                        "furacão".ToCharArray(),
                        "gamão".ToCharArray(),
                        "lampião".ToCharArray(),
                        "leão".ToCharArray(),
                        "macacão".ToCharArray(),
                        "nação".ToCharArray(),
                        "órfão".ToCharArray(),
                        "orgão".ToCharArray(),
                        "patrão".ToCharArray(),
                        "portão".ToCharArray(),
                        "quinhão".ToCharArray(),
                        "rincão".ToCharArray(),
                        "tração".ToCharArray(),
                        "falcão".ToCharArray(),
                        "espião".ToCharArray(),
                        "mamão".ToCharArray(),
                        "folião".ToCharArray(),
                        "cordão".ToCharArray(),
                        "aptidão".ToCharArray(),
                        "campeão".ToCharArray(),
                        "colchão".ToCharArray(),
                        "limão".ToCharArray(),
                        "leilão".ToCharArray(),
                        "melão".ToCharArray(),
                        "barão".ToCharArray(),
                        "milhão".ToCharArray(),
                        "bilhão".ToCharArray(),
                        "fusão".ToCharArray(),
                        "cristão".ToCharArray(),
                        "ilusão".ToCharArray(),
                        "capitão".ToCharArray(),
                        "estação".ToCharArray(),
                        "senão".ToCharArray()
                    }.ToArray()
                }
            };

	        int i = 0;
            bool done = false;

	        while ((i<AUG) && (!done))
	        {
		        if (strip_suffix2(w, aug_suffix[i]))
                    done = true;

		        i++;
	        }
        }

        private static void feminine(StringBuilder w)
        {
            List<stem_struct> feminine_suffix = new List<stem_struct>() {
		        new stem_struct{ suffix = "ona".ToCharArray(), min_stem_size = 3, replacement = "ão".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "abandona".ToCharArray(),
                        "lona".ToCharArray(),
                        "iona".ToCharArray(),
                        "cortisona".ToCharArray(),
                        "monótona".ToCharArray(),
                        "maratona".ToCharArray(),
                        "acetona".ToCharArray(),
                        "detona".ToCharArray(),
                        "carona".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ora".ToCharArray(), min_stem_size = 3, replacement = "or".ToCharArray() },
		        new stem_struct(){ suffix = "na".ToCharArray() , min_stem_size = 4, replacement = "no".ToCharArray() , exceptions =
                    new List<char[]>(){
                        "carona".ToCharArray(),
                        "abandona".ToCharArray(),
                        "lona".ToCharArray(),
                        "iona".ToCharArray(),
                        "cortisona".ToCharArray(),
                        "monótona".ToCharArray(),
                        "maratona".ToCharArray(),
                        "acetona".ToCharArray(),
                        "detona".ToCharArray(),
                        "guiana".ToCharArray(),
                        "campana".ToCharArray(),
                        "grana".ToCharArray(),
                        "caravana".ToCharArray(),
                        "banana".ToCharArray(),
                        "paisana".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "inha".ToCharArray(), min_stem_size = 3, replacement = "inho".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "rainha".ToCharArray(),
                        "linha".ToCharArray(),
                        "minha".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "esa".ToCharArray(), min_stem_size = 3, replacement = "ês".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "mesa".ToCharArray(),
                        "obesa".ToCharArray(),
                        "princesa".ToCharArray(),
                        "turquesa".ToCharArray(),
                        "ilesa".ToCharArray(),
                        "pesa".ToCharArray(),
                        "presa".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "osa".ToCharArray(), min_stem_size = 3, replacement = "oso".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "mucosa".ToCharArray(),
                        "prosa".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "íaca".ToCharArray(), min_stem_size = 3, replacement = "íaco".ToCharArray() },
		        new stem_struct(){ suffix = "ica".ToCharArray(), min_stem_size = 3, replacement = "ico".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "dica".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ada".ToCharArray(), min_stem_size = 2, replacement = "ado".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "pitada".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ida".ToCharArray(), min_stem_size = 3, replacement = "ido".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "vida".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ída".ToCharArray(), min_stem_size = 3, replacement = "ido".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "recaída".ToCharArray(),
                        "saída".ToCharArray(),
                        "dúvida".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ima".ToCharArray(), min_stem_size = 3, replacement = "imo".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "vítima".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "iva".ToCharArray(), min_stem_size = 3, replacement = "ivo".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "saliva".ToCharArray(),
                        "oliva".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "eira".ToCharArray(), min_stem_size = 3, replacement = "eiro".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "beira".ToCharArray(),
                        "cadeira".ToCharArray(),
                        "frigideira".ToCharArray(),
                        "bandeira".ToCharArray(),
                        "feira".ToCharArray(),
                        "capoeira".ToCharArray(),
                        "barreira".ToCharArray(),
                        "fronteira".ToCharArray(),
                        "besteira".ToCharArray(),
                        "poeira".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ã".ToCharArray(), min_stem_size = 2, replacement = "ão".ToCharArray(), exceptions =
                    new List<char[]>(){
                        "amanhã".ToCharArray(),
                        "arapuã".ToCharArray(),
                        "fã".ToCharArray(),
                        "divã".ToCharArray()
                    }.ToArray()
                }
            };

            int i = 0;
            bool done = false;

            while ((i < FEM) && (!done))
            {
                if (strip_suffix2(w, feminine_suffix[i]))
                    done = true;

                i++;
            }
        }

        private static void adverb(StringBuilder w)
        {
            List<stem_struct> adv_suffix = new List<stem_struct>() {
                new stem_struct(){ suffix = "mente".ToCharArray(), min_stem_size = 4, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>() {
                        "experimente".ToCharArray(),
                    }.ToArray()
                }
            };

            int i = 0;
            bool done = false;

            while ((i < ADV) && (!done))
            {
                if (strip_suffix(w, adv_suffix[i]))
                    done = true;

                i++;
            }
        }

        private static bool strip_suffix(StringBuilder w, stem_struct stem)
        {
            int wlen, slen;
            
            wlen = w.Length;
            slen = stem.suffix.Length;

            if ((wlen - slen >= stem.min_stem_size) && (w.ToString().EndsWith(new string(stem.suffix))) && !(exceptions(w, stem.exceptions)))
            {
                w.Remove(wlen - slen, w.Length - (wlen - slen));

                if (stem.replacement != null)
                    append(w, stem.replacement);

                return true;
            }

            return false;
        }

        private static bool exceptions(StringBuilder w, char[][] ex)
        {
            int i = 0;
            bool done = false;
            while ((i < 40) && (!done) && ex != null && i < ex.Length)
            {
                if (w.ToString().EndsWith(new string(ex[i])))
                {
                    done = true;
                    return true;
                }
                else
                    i++;

                if (i >= 39)
                    return false;
            }

            return false;
        }

        private static void plural(StringBuilder w)
        {
            List<stem_struct> plural_suffix = new List<stem_struct>() {
                new stem_struct(){ suffix = "ns".ToCharArray(), min_stem_size = 1, replacement = "m".ToCharArray() },
                new stem_struct(){ suffix = "ões".ToCharArray(), min_stem_size = 3, replacement = "ão".ToCharArray() },
                new stem_struct(){ suffix = "ães".ToCharArray(), min_stem_size = 1, replacement = "ão".ToCharArray(), exceptions =
                    new List<char[]>() {
                        "mãe".ToCharArray(),
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "ais".ToCharArray(), min_stem_size = 1, replacement = "al".ToCharArray(), exceptions =
                    new List<char[]>() {
                        "cais".ToCharArray(),
                        "mais".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "éis".ToCharArray(), min_stem_size = 2, replacement = "el".ToCharArray() },
		        new stem_struct(){ suffix = "eis".ToCharArray(), min_stem_size = 2, replacement = "el".ToCharArray() },
		        new stem_struct(){ suffix = "óis".ToCharArray(), min_stem_size = 2, replacement = "ol".ToCharArray() },
		        new stem_struct(){ suffix = "is".ToCharArray(), min_stem_size = 2, replacement = "il".ToCharArray(), exceptions =
                    new List<char[]>() {
                        "lápis".ToCharArray(),
                        "cais".ToCharArray(),
                        "mais".ToCharArray(),
                        "crúcis".ToCharArray(),
                        "biquínis".ToCharArray(),
                        "pois".ToCharArray(),
                        "depois".ToCharArray(),
                        "dois".ToCharArray()
                    }.ToArray()
                },
		        new stem_struct(){ suffix = "les".ToCharArray(), min_stem_size = 3, replacement = "l".ToCharArray() },
		        new stem_struct(){ suffix = "res".ToCharArray(), min_stem_size = 3, replacement = "r".ToCharArray() },
                new stem_struct(){ suffix = "s".ToCharArray(), min_stem_size = 2, replacement = "".ToCharArray(), exceptions =
                    new List<char[]>() {
                        "aliás".ToCharArray(),
                        "pires".ToCharArray(),
                        "lápis".ToCharArray(),
                        "cais".ToCharArray(),
                        "mais".ToCharArray(),
		                "férias".ToCharArray(),
                        "fezes".ToCharArray(),
                        "pêsames".ToCharArray(),
                        "crúcis".ToCharArray(),
                        "gás".ToCharArray(),
		                "atrás".ToCharArray(),
                        "moisés".ToCharArray(),
                        "através".ToCharArray(),
                        "convés".ToCharArray(),
                        "ês".ToCharArray(),
		                "país".ToCharArray(),
                        "após".ToCharArray(),
                        "ambas".ToCharArray(),
                        "ambos".ToCharArray(),
                        "messias".ToCharArray()
                    }.ToArray()
                }
            };

	        int i = 0;
            bool done = false;

	        while ((i<PLURAL) && (!done))
	        {
		        if (strip_suffix2(w, plural_suffix[i]))
                    done = true;
		        i++;
	        }
        }

        private static bool strip_suffix2(StringBuilder w, stem_struct stem)
        {
            int wlen, slen;
            
            wlen = w.Length;
            slen = stem.suffix.Length;
             
            if ((wlen - slen >= stem.min_stem_size) && (w.ToString().EndsWith(new string(stem.suffix))) && !(exceptions2(w, stem.exceptions)))
            {
                w.Remove(wlen - slen, w.Length - (wlen - slen));

                if (stem.replacement != null)
                    append(w, stem.replacement);

                return true;
            }
            else
                return false;
        }

        private static void append(StringBuilder w, char[] r)
        {
            int wlen, rlen, i;

            rlen = r.Length;
            wlen = w.Length;

            for (i = 0; i < rlen; i++)
                w.Append(r[i]);

            //w.Remove(wlen - rlen, w.Length - (wlen - rlen));
        }

        private static bool exceptions2(StringBuilder w, char[][] ex)
        {
            int i = 0;
            bool done = false;
            while ((i < 50) && (!done) && ex != null && i < ex.Length)
            {
                if (w.ToString().Equals(new string(ex[i])))
                {
                    done = true;
                    return true;
                }
                else
                    i++;
                if (i >= 49) return false;
            }

            return false;
        }
    }
}
