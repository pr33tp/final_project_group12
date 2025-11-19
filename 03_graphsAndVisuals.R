
#boxplot to visualize (more plots to come)
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

p <- plot_word_length_comparison(avg_lengths_df)
p
aggregate(avg_word_length ~ decade, data = avg_lengths_df, mean)

#violin plot
ggplot(avg_lengths_df, aes(x = decade, y = avg_word_length, fill = decade)) +
  geom_violin(trim = FALSE) +
  labs(
    title = "Distribution of Word Lengths by Decade",
    x = "Decade",
    y = "Average Word Length"
  ) +
  theme_minimal()

#density plot
ggplot(avg_lengths_df, aes(x = avg_word_length, fill = decade)) +
  geom_density(alpha = 0.5) +
  labs(
    title = "Density of Word Lengths by Decade",
    x = "Average Word Length",
    y = "Density"
  ) +
  theme_minimal()

#line plot
avg_lengths_df$book_id <- seq_len(nrow(avg_lengths_df))
ggplot(avg_lengths_df, aes(x = book_id, y = avg_word_length, group = decade, color = decade)) +
  geom_line() +
  geom_point() +
  labs(
    title = "Word Length Trend Across Books",
    x = "Book",
    y = "Average Word Length"
  ) +
  theme_minimal()

#histogram
ggplot(avg_lengths_df, aes(x = avg_word_length)) +
  geom_histogram(bins = 20, fill = "steelblue") +
  facet_wrap(~ decade, scales = "free_y") +
  labs(
    title = "Histograms of Word Lengths by Decade",
    x = "Average Word Length",
    y = "Count"
  ) +
  theme_minimal()

