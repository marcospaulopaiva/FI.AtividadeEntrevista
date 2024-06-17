﻿using System;

namespace FI.WebAtividadeEntrevista.Util
{
    public static class Util
    {
        /// <summary>
        /// Realiza a validação do CPF
        /// </summary>
        public static bool ValidaCPF(string CPF)
        {
            int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };

            CPF = CPF.Trim().Replace(".", "").Replace("-", "");
            if (CPF.Length != 11)
                return false;

            for (int j = 0; j < 10; j++)
                if (j.ToString().PadLeft(11, char.Parse(j.ToString())) == CPF)
                    return false;

            string tempCpf = CPF.Substring(0, 9);
            int soma = 0;

            for (int i = 0; i < 9; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];

            int resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;

            string digito = resto.ToString();
            tempCpf = tempCpf + digito;
            soma = 0;
            for (int i = 0; i < 10; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];

            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;

            digito = digito + resto.ToString();

            return CPF.EndsWith(digito);
        }

        /// <summary>
        /// Remove mascara do CPF
        /// </summary>
        public static string RemoveMascara(string _string)
        {
            return _string.Trim().Replace(".", "").Replace("-", "");
        }
        
    }
}
