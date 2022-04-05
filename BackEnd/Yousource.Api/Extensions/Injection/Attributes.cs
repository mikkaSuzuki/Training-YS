﻿namespace Yousource.Api.Extensions.Injection
{
    using Microsoft.Extensions.DependencyInjection;
    using Yousource.Api.Filters;

    public static class Attributes
    {
        public static void InjectAttributes(this IServiceCollection services)
        {
            services.AddScoped<ValidateModelStateAttribute>();
            services.AddScoped<LogExceptionAttribute>();
        }
    }
}
