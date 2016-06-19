﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DALInterface;

namespace DAL
{
    public class ProblemDA: IProblemDA
    {
        public List<problem> getProblems()
        {
            List<problem> problem = new List<problem>();
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.problem
                            orderby c.p_id descending
                            select c;
                foreach (var item in query)
                    problem.Add(item);
            }
            return problem;
        }

        //public List<problem> getProblemsRamdomly(int num)
        //{
        //    List<problem> problem = new List<problem>();
        //    using (yuanquanEntities yq = new yuanquanEntities())
        //    {
        //        var query = from c in yq.problem
        //                    orderby yq.
        //                    select c;
        //        foreach (var item in query)
        //            problem.Add(item);
        //    }
        //    return problem;
        //}
    }
}
