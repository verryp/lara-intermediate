<template>
  <div>
    <ul class="list-group">
      <li class="list-group" v-for="(task, index) in tasks" :key="index">{{ task }}</li>
    </ul>

    <br />

    <input type="text" class="form-control" v-model="newTask" @blur="addTask" />
  </div>
</template>

<script>
export default {
  data() {
    return {
      tasks: [],
      newTask: ""
    };
  },

  async mounted() {
    let response = await axios.get("/tasks");
    this.tasks = response.data;

    window.Echo.channel("tasks").listen("RealtimeNotification", response => {
      this.tasks.push(response.task.body);
    });
  },

  methods: {
    async addTask() {
      let response = await axios.post("/tasks", {
        body: this.newTask
      });

      this.tasks.push(response.data);
      this.newTask = "";
    }
  }
};
</script>
