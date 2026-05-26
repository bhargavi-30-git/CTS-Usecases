using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Moq;
using MyFunctionApp;
using Xunit;

namespace MyFunctionApp.Tests
{
    public class HttpTriggerFunctionTests
    {
        private readonly Mock<ILogger<HttpTriggerFunction>> _loggerMock;
        private readonly HttpTriggerFunction _function;

        public HttpTriggerFunctionTests()
        {
            _loggerMock = new Mock<ILogger<HttpTriggerFunction>>();
            _function = new HttpTriggerFunction(_loggerMock.Object);
        }

        [Fact]
        public void Run_ReturnsOkResult()
        {
            // Arrange
            var context = new DefaultHttpContext();
            var request = context.Request;

            // Act
            var result = _function.Run(request);

            // Assert
            Assert.IsType<OkObjectResult>(result);
        }

        [Fact]
        public void Run_ReturnsExpectedMessage()
        {
            // Arrange
            var context = new DefaultHttpContext();
            var request = context.Request;

            // Act
            var result = _function.Run(request) as OkObjectResult;

            // Assert
            Assert.NotNull(result);
            Assert.Equal(
                "Hello from uc4-functionapp-tf via Terraform + Azure DevOps CI/CD!",
                result.Value
            );
        }

        [Fact]
        public void Run_LogsInformation()
        {
            // Arrange
            var context = new DefaultHttpContext();
            var request = context.Request;

            // Act
            _function.Run(request);

            // Assert
            _loggerMock.Verify(
                x => x.Log(
                    LogLevel.Information,
                    It.IsAny<EventId>(),
                    It.Is<It.IsAnyType>((v, t) => true),
                    It.IsAny<Exception>(),
                    It.IsAny<Func<It.IsAnyType, Exception?, string>>()),
                Times.Once);
        }
    }
}