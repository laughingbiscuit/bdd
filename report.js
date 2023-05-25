var reporter = require('cucumber-html-reporter');

var options = {
        theme: 'bootstrap',
        jsonFile: 'result/report.json',
        output: 'result/cucumber_report.html',
        reportSuiteAsScenarios: true,
    };

    reporter.generate(options);
