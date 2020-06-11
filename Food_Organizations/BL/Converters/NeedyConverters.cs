using Dal;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL.Converters
{
   public class NeedyConverters
    {
        public static Dal.Needy GetNeedy(DTO.NeedyDTO needyDTO)
        {
            Dal.Needy needy = new Dal.Needy();
            needy.Entry_Date = needyDTO.Entry_Date;
            needy.Needy_Kod = needyDTO.Needy_Kod;
            needy.Number_Of_Persons = needyDTO.Number_Of_Persons;
            return needy;
        }
      public static NeedyDTO GetNeedyDTO(Needy needy)
        {
            NeedyDTO needyDTO = new NeedyDTO();
            needyDTO.Entry_Date = needy.Entry_Date;
            needyDTO.Needy_Kod = needy.Needy_Kod;
            needyDTO.Number_Of_Persons = needy.Number_Of_Persons;
            return needyDTO;
        }
        public static List<Dal.Needy> GetListNeedy(List<DTO.NeedyDTO> ls)
        {
            List<Dal.Needy> dl = new List<Dal.Needy>();
            foreach (var item in ls)

            {
                dl.Add(GetNeedy(item));

            }
            return dl;

        }
        public static List<DTO.NeedyDTO> GetListNeedyDTO(List<Dal.Needy> ls)
        {
            List<DTO.NeedyDTO> dl = new List<DTO.NeedyDTO>();
            foreach (var item in ls)
            {
                dl.Add(GetNeedyDTO(item));
            }
            return dl;
        }
    }
}
