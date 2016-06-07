var graph_option = {
  chart: {
    renderTo: 'graph'
  },
  title: {
    text: '',
    x: -20 //center
  },
  subtitle: {
    text: '',
    x: -20
  },
  xAxis: {
    categories: [],
    crosshair: true
  },
  tooltip: {
    shared: true
  },
  yAxis: [{
    title: {text: '気温'}
  },{
    title: {text:'湿度'},opposite: true
  },{
    title: {text:'気圧'},opposite: true
  }],
  legend: {
    // layout: 'vertical',
    align: 'left',
    // verticalAlign: 'middle',
    borderWidth: 0
  },
  series: []
};
