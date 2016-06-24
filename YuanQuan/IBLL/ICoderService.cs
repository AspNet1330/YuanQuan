﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLLInterface
{
    public interface ICoderService
    {
        //List<coder> getTopCoder();
        List<coder> getTopCoderof(String skill);

        coder getCoderByID(int id);

        coder getCoderByAccount(String account);

        int insert(coder a);
    }
}
