// loader settings
/*var opts = {
  lines: 9, // The number of lines to draw
  length: 9, // The length of each line
  width: 5, // The line thickness
  radius: 14, // The radius of the inner circle
  color: '#EE3124', // #rgb or #rrggbb or array of colors
  speed: 1.9, // Rounds per second
  trail: 40, // Afterglow percentage
  className: 'spinner', // The CSS class to assign to the spinner
};*/
var svg, tooltip;
var base, filtered_data = false /*target /*,spinner*/;
var cbFilterData = { cursos: null, regiao: null };


init();


function init() {
    /*
    // trigger loader
    target = document.getElementById('chart');
    spinner = new Spinner(opts).spin(target); */
    // load data
    var dsv = d3.dsv(',');
    dsv("base.csv", function (error, raw_data) {
        base = raw_data;
        //spinner.stop(); // stop spin.js loader        
        //pega listas de cursos do dataset
        cbFilterData.cursos = d3.map(base, function (d) { return d.nome; }).keys();
        updateFiltersOptions('cbcurso');
        cbFilterData.regiao = d3.map(base, function(d){return d.regiao;}).keys();
        updateFiltersOptions('cbregiao')
    });
}