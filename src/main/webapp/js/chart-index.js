const ctx = document.getElementById("myChart");
let valueArray = [];
const labelValues = [];
for (let i = 0; i < 26; i++) {
  valueArray[i] = Math.floor(Math.random() * 100);
  labelValues[i] = "";
}

const chart = new Chart(ctx, {
  data: {
    labels: labelValues,
    datasets: [
      {
        label: "",
        data: valueArray,
        borderWidth: 1,
        type: "line",
        backgroundColor: "#0ea5e950",
        borderColor: "#0ea5e950",
      },
      {
        label: "",
        data: valueArray,
        borderWidth: 1,
        type: "bar",
        backgroundColor: "#10b98150",
      },
    ],
  },
  options: {
    scales: {
      x: {
        grid: {
          display: false,
        },

        display: false,
      },
      y: {
        grid: {
          display: false,
        },
        ticks: {
          display: false,
        },
        display: false,
      },
    },
    maintainAspectRatio: false,
  },
});

setInterval(() => {
  const index = Math.floor(Math.random() * 26);
  valueArray[index] = Math.floor(Math.random() * 100);
  chart.update();
}, 200);
