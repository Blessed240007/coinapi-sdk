/*
 * EMS - REST API
 *
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a hrefs=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using NUnit.Framework;

using System;
using System.Linq;
using System.IO;
using System.Collections.Generic;
using CoinAPI.OMS.REST.V1.Api;
using CoinAPI.OMS.REST.V1.Model;
using CoinAPI.OMS.REST.V1.Client;
using System.Reflection;
using Newtonsoft.Json;

namespace CoinAPI.OMS.REST.V1.Test
{
    /// <summary>
    ///  Class for testing OrderExecutionReport
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the model.
    /// </remarks>
    public class OrderExecutionReportTests
    {
        // TODO uncomment below to declare an instance variable for OrderExecutionReport
        //private OrderExecutionReport instance;

        /// <summary>
        /// Setup before each test
        /// </summary>
        [SetUp]
        public void Init()
        {
            // TODO uncomment below to create an instance of OrderExecutionReport
            //instance = new OrderExecutionReport();
        }

        /// <summary>
        /// Clean up after each test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of OrderExecutionReport
        /// </summary>
        [Test]
        public void OrderExecutionReportInstanceTest()
        {
            // TODO uncomment below to test "IsInstanceOf" OrderExecutionReport
            //Assert.IsInstanceOf(typeof(OrderExecutionReport), instance);
        }


        /// <summary>
        /// Test the property 'ExchangeId'
        /// </summary>
        [Test]
        public void ExchangeIdTest()
        {
            // TODO unit test for the property 'ExchangeId'
        }
        /// <summary>
        /// Test the property 'ClientOrderId'
        /// </summary>
        [Test]
        public void ClientOrderIdTest()
        {
            // TODO unit test for the property 'ClientOrderId'
        }
        /// <summary>
        /// Test the property 'SymbolIdExchange'
        /// </summary>
        [Test]
        public void SymbolIdExchangeTest()
        {
            // TODO unit test for the property 'SymbolIdExchange'
        }
        /// <summary>
        /// Test the property 'SymbolIdCoinapi'
        /// </summary>
        [Test]
        public void SymbolIdCoinapiTest()
        {
            // TODO unit test for the property 'SymbolIdCoinapi'
        }
        /// <summary>
        /// Test the property 'AmountOrder'
        /// </summary>
        [Test]
        public void AmountOrderTest()
        {
            // TODO unit test for the property 'AmountOrder'
        }
        /// <summary>
        /// Test the property 'Price'
        /// </summary>
        [Test]
        public void PriceTest()
        {
            // TODO unit test for the property 'Price'
        }
        /// <summary>
        /// Test the property 'Side'
        /// </summary>
        [Test]
        public void SideTest()
        {
            // TODO unit test for the property 'Side'
        }
        /// <summary>
        /// Test the property 'OrderType'
        /// </summary>
        [Test]
        public void OrderTypeTest()
        {
            // TODO unit test for the property 'OrderType'
        }
        /// <summary>
        /// Test the property 'TimeInForce'
        /// </summary>
        [Test]
        public void TimeInForceTest()
        {
            // TODO unit test for the property 'TimeInForce'
        }
        /// <summary>
        /// Test the property 'ExpireTime'
        /// </summary>
        [Test]
        public void ExpireTimeTest()
        {
            // TODO unit test for the property 'ExpireTime'
        }
        /// <summary>
        /// Test the property 'ExecInst'
        /// </summary>
        [Test]
        public void ExecInstTest()
        {
            // TODO unit test for the property 'ExecInst'
        }
        /// <summary>
        /// Test the property 'ClientOrderIdFormatExchange'
        /// </summary>
        [Test]
        public void ClientOrderIdFormatExchangeTest()
        {
            // TODO unit test for the property 'ClientOrderIdFormatExchange'
        }
        /// <summary>
        /// Test the property 'ExchangeOrderId'
        /// </summary>
        [Test]
        public void ExchangeOrderIdTest()
        {
            // TODO unit test for the property 'ExchangeOrderId'
        }
        /// <summary>
        /// Test the property 'AmountOpen'
        /// </summary>
        [Test]
        public void AmountOpenTest()
        {
            // TODO unit test for the property 'AmountOpen'
        }
        /// <summary>
        /// Test the property 'AmountFilled'
        /// </summary>
        [Test]
        public void AmountFilledTest()
        {
            // TODO unit test for the property 'AmountFilled'
        }
        /// <summary>
        /// Test the property 'AvgPx'
        /// </summary>
        [Test]
        public void AvgPxTest()
        {
            // TODO unit test for the property 'AvgPx'
        }
        /// <summary>
        /// Test the property 'Status'
        /// </summary>
        [Test]
        public void StatusTest()
        {
            // TODO unit test for the property 'Status'
        }
        /// <summary>
        /// Test the property 'StatusHistory'
        /// </summary>
        [Test]
        public void StatusHistoryTest()
        {
            // TODO unit test for the property 'StatusHistory'
        }
        /// <summary>
        /// Test the property 'ErrorMessage'
        /// </summary>
        [Test]
        public void ErrorMessageTest()
        {
            // TODO unit test for the property 'ErrorMessage'
        }
        /// <summary>
        /// Test the property 'Fills'
        /// </summary>
        [Test]
        public void FillsTest()
        {
            // TODO unit test for the property 'Fills'
        }

    }

}
