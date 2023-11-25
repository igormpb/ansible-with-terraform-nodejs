const express = require("express")
const app = express();


app.use(express.json())

app.get("/", (req,res) => {
    res.sendFile("index.html", {root: __dirname })

})

app.listen(8000, () => {
    console.log("Server is open")
})