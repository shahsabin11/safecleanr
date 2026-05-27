## code to prepare `student_data_code` dataset goes here
student_data <- data.frame(
  student_id = c(101, 102, 103, 104, 105, 106, 107, 108),

  name = c(
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Emma",
    "Frank",
    "Grace",
    "Henry"
  ),

  major = c(
    "Computer Science",
    "Biology",
    "Economics",
    "Mathematics",
    "Physics",
    "History",
    "Data Science",
    "Chemistry"
  ),

  study_hours = c(15, 12, NA, 20, 18, NA, 25, 10),

  attendance = c(90, 85, 88, NA, 95, 80, 92, NA),

  final_grade = c(88, 76, 91, 85, NA, 73, 96, 81)
)

usethis::use_data(student_data_code, overwrite = TRUE)
