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
    categories: []
  },
  yAxis: [{
    title: {text: '気温'}
  },{
    title: {text:'湿度'},opposite: true
  }],
  plotLines: [{
    value: 0,
    width: 1,
    color: '#808080'
  }],
  legend: {
    // layout: 'vertical',
    align: 'left',
    // verticalAlign: 'middle',
    borderWidth: 0
  },
  series: []
};
