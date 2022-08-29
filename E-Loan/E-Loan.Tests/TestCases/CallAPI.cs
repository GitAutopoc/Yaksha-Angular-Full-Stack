using Newtonsoft.Json;
using System;
using System.IO;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace E_Loan.Tests.TestCases
{
    public class CallAPI
    {
        public static TestResults testResults;
      
        public static Dictionary<string, TestCaseResultDto> testCaseResults;
        public static string customValue;
        public static string UniqueGuid = "18f69543-da90-412c-8a01-4825f31340bb";

        
        public static async Task<string> saveTestResult(string testName, string status, string type)
        {
            testResults = new TestResults();
            testCaseResults = new Dictionary<string, TestCaseResultDto>();
            customValue = System.IO.File.ReadAllText("../../../../custom.ih");
            testResults.CustomData = customValue;
            int actualScore = 0;
            String testStatus = "Failed";
            if (status.Equals("True"))
            {
                actualScore = 1;
                testStatus = "Passed";
            }

            testCaseResults.Add(UniqueGuid, new TestCaseResultDto
            {
                MethodName = testName,
                MethodType = type,
                EarnedScore = 1,
                ActualScore = actualScore,
                Status = testStatus,
                IsMandatory = true
            });

            using (HttpClient _httpClient = new HttpClient())
            {
                testResults.TestCaseResults = JsonConvert.SerializeObject(testCaseResults);
                var testResultsJson = JsonConvert.SerializeObject(testResults);
                await _httpClient.PostAsync("https://yaksha-stage-sbfn.azurewebsites.net/api/TestCaseResultsEnqueue?code=AjU0mofZlYs9oYbZnJpVwJWRY1dRKkDyS3QDY8aJAvrcjJvgBAXVDg==", new StringContent(testResultsJson, Encoding.UTF8, "application/json"));
            }
            return status;
        }

        public static string GetCurrentMethodName([System.Runtime.CompilerServices.CallerMemberName] string name = "")
        {
            return name;
        }

    }
}
