using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication8.Analistic
{
    public class Count
    {
        List<String> listOfTrade = new List<String>();
        List<int> listOfCount = new List<int>();
        Boolean chek = false;

        public List<String> lot
        {
            get { return listOfTrade; }
        
        }

        public List<int> counting(List<String> ls)

        {



            for (int i = 0; i < ls.Count; i++)
            {
                for (int k = 0; k < listOfTrade.Count; k++)
                {
                    if (listOfTrade[k] == ls[i])
                    {
                        listOfCount[k]++;
                        chek=true;
                    }
                                      
                
                }

                if (!chek)
                {
                    listOfTrade.Add(ls[i]);
                    listOfCount.Add(1);
                    chek = false;
                }

                chek = false;
            }

            return listOfCount;
        
        }

    }
}