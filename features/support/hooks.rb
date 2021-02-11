Before do
    page.current_window.resize_to(1366, 768)

    @loginPage = LoginPage.new
    @pesquisaPage = PesquisaPage.new
    @compraPage = CompraPage.new
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
    nome_cenario = nome_cenario.gsub(' ','_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Print')
 end

at_exit do
    time = Time.now.getutc
    ReportBuilder.configure do |config|
    config.json_path = 'report.json'
    config.report_path = 'cucumber_web_report'
    config.report_types = [:html]
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = 'Cucumber Report Builder web automation test results'
    config.compress_images = false
    config.additional_info = { 'Project name' => 'Test', 'Platform' => 'Integration', 'Report generated' => time }
    end
    ReportBuilder.build_report
end