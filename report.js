var reporter = require('cucumber-html-reporter');

var options = {
        theme: 'bootstrap',
        jsonFile: 'report.json',
        output: 'result/index.html',
        reportSuiteAsScenarios: true,
        brandTitle: 'Report',
        columnLayout: 1
    };

    reporter.generate(options);
