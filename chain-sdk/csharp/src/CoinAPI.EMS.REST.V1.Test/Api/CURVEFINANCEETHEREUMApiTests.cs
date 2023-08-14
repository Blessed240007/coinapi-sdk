/*
 * On Chain Dapps - REST API
 *
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Model;

namespace CoinAPI.EMS.REST.V1.Test
{
    /// <summary>
    ///  Class for testing CURVEFINANCEETHEREUMApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class CURVEFINANCEETHEREUMApiTests
    {
        private CURVEFINANCEETHEREUMApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new CURVEFINANCEETHEREUMApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of CURVEFINANCEETHEREUMApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOf' CURVEFINANCEETHEREUMApi
            //Assert.IsInstanceOf(typeof(CURVEFINANCEETHEREUMApi), instance);
        }

        
        /// <summary>
        /// Test CURVEFINANCEETHEREUMLiquidityPoolsCurrent
        /// </summary>
        [Test]
        public void CURVEFINANCEETHEREUMLiquidityPoolsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.CURVEFINANCEETHEREUMLiquidityPoolsCurrent();
            //Assert.IsInstanceOf(typeof(List<CURVEFINANCEETHEREUMLiquidityPoolDTO>), response, "response is List<CURVEFINANCEETHEREUMLiquidityPoolDTO>");
        }
        
        /// <summary>
        /// Test CURVEFINANCEETHEREUMSwapsCurrent
        /// </summary>
        [Test]
        public void CURVEFINANCEETHEREUMSwapsCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.CURVEFINANCEETHEREUMSwapsCurrent();
            //Assert.IsInstanceOf(typeof(List<CURVEFINANCEETHEREUMSwapDTO>), response, "response is List<CURVEFINANCEETHEREUMSwapDTO>");
        }
        
        /// <summary>
        /// Test CURVEFINANCEETHEREUMTokensCurrent
        /// </summary>
        [Test]
        public void CURVEFINANCEETHEREUMTokensCurrentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.CURVEFINANCEETHEREUMTokensCurrent();
            //Assert.IsInstanceOf(typeof(List<CURVEFINANCEETHEREUMTokenDTO>), response, "response is List<CURVEFINANCEETHEREUMTokenDTO>");
        }
        
    }

}
