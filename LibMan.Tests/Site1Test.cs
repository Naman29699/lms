using System.Reflection;
// <copyright file="Site1Test.cs">Copyright ©  2022</copyright>

using System;
using LibMan;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace LibMan.Tests
{
    [TestClass]
    [PexClass(typeof(Site1))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class Site1Test
    {

        [PexMethod(MaxConditions = 1000)]
        [PexMethodUnderTest("Page_Load(Object, EventArgs)")]
        internal void Page_Load(
            [PexAssumeUnderTest] Site1 target,
            object sender,
            EventArgs e
        )
        {
            object[] args = new object[2];
            args[0] = sender;
            args[1] = (object)e;
            Type[] parameterTypes = new Type[2];
            parameterTypes[0] = typeof(object);
            parameterTypes[1] = typeof(EventArgs);
            object result = ((MethodBase)(typeof(Site1).GetMethod("Page_Load",
                                                                  BindingFlags.DeclaredOnly | BindingFlags.Instance | BindingFlags.NonPublic, (Binder)null,
                                                                  CallingConventions.HasThis, parameterTypes, (ParameterModifier[])null)))
                                .Invoke((object)target, args);
            // TODO: add assertions to method Site1Test.Page_Load(Site1, Object, EventArgs)
        }
    }
}
