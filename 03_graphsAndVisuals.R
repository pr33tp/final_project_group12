# --- BOX PLOT FUNCTION ---
plot_word_length_comparison <- function(df) {
  ggplot(df, aes(x = decade, y = avg_word_length, fill = decade)) +
    geom_boxplot() +
    labs(
      title = "Average Word Lengths: 1910s vs 2010s",
      x = "Decade",
      y = "Average Word Length"
    ) +
    theme_minimal()
}


# --- VIOLIN PLOT FUNCTION ---
plot_violin <- function(df) {
  ggplot(df, aes(x = decade, y = avg_word_length, fill = decade)) +
    geom_violin(trim = FALSE) +
    labs(
      title = "Distribution of Word Lengths by Decade",
      x = "Decade",
      y = "Average Word Length"
    ) +
    theme_minimal()
}


# --- DENSITY PLOT FUNCTION ---
plot_density <- function(df) {
  ggplot(df, aes(x = avg_word_length, fill = decade)) +
    geom_density(alpha = 0.5) +
    labs(
      title = "Density of Word Lengths by Decade",
      x = "Average Word Length",
      y = "Density"
    ) +
    theme_minimal()
}


# --- LINE PLOT FUNCTION ---
plot_line <- function(df) {
  df$book_id <- seq_len(nrow(df))
  ggplot(df, aes(x = book_id, y = avg_word_length, group = decade, color = decade)) +
    geom_line() +
    geom_point() +
    labs(
      title = "Word Length Trend Across Books",
      x = "Book ID",
      y = "Average Word Length"
    ) +
    theme_minimal()
}


# --- HISTOGRAM FUNCTION ---
plot_histogram <- function(df) {
  ggplot(df, aes(x = avg_word_length)) +
    geom_histogram(bins = 20, fill = "steelblue") +
    facet_wrap(~ decade, scales = "free_y") +
    labs(
      title = "Histograms of Word Lengths by Decade",
      x = "Average Word Length",
      y = "Count"
    ) +
    theme_minimal()
}
