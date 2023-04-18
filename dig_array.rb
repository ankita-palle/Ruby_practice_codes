
colour_theme = {
    primary_choice: [
        {
          name: "red",
          hex_value: "#ff5555"
        },
        {
          name: "blue",
          hex_value: "#3333ff"
        }
    ],
    fallback: [
      "snow", "gold", "teal"
    ]
}

puts colour_theme[:primary_choice][1][:hex_value]

#########################################################################


duration = [
  [54, [123, 231]], ["high", "low", "mixed"], [[4, 10], [99, 0]]
]

# Write your code below this

puts duration[2][1][1]
