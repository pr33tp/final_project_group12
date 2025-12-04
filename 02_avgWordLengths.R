#creates a variable avg word length taking in word_lengths and finds the mean of them
average_word_length_per_book <- function(book_list) {
  word_lengths_list <- get_word_lengths_from_books(book_list)
  sapply(word_lengths_list, mean, na.rm = TRUE)
}

#comparing the decades we have right now (1910 and 2010; may be subject to change once we add more)
compare_decades <- function(books_1910s, books_2010s) {
  avg_1910s <- average_word_length_per_book(books_1910s)
  avg_2010s <- average_word_length_per_book(books_2010s)
  
  avg_lengths_df <- data.frame(
    decade = c(rep("1910s", length(avg_1910s)),
               rep("2010s", length(avg_2010s))),
    book = c(names(avg_1910s), names(avg_2010s)),
    avg_word_length = c(avg_1910s, avg_2010s)
  )
  
  return(avg_lengths_df)
}