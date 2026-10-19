package com.linkcode.chatapp;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Scanner;

public class ChatApplication {

    public static void main(String[] args) throws IOException, InterruptedException {

        // Get API key from environment variable
        String apikey = System.getenv("chatbot");

        // Take message from user
        Scanner sc = new Scanner(System.in);

        System.out.print("You: ");
        String message = sc.nextLine();

        // Create HTTP client
        HttpClient httpClient = HttpClient.newHttpClient();

        // JSON request body
        String json = """
                {
                  "model": "openai/gpt-oss-20b",
                  "messages": [
                    {
                      "role": "user",
                      "content": "%s"
                    }
                  ]
                }
                """.formatted(
                        message.replace("\"", "\\\"")
                );

        // Create HTTP request
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(
                        "https://api.groq.com/openai/v1/chat/completions"
                ))
                .header("Authorization", "Bearer " + apikey)
                .header("Content-Type", "application/json")
                .POST(HttpRequest.BodyPublishers.ofString(json))
                .build();

        // Send request
        HttpResponse<String> response = httpClient.send(
                request,
                HttpResponse.BodyHandlers.ofString()
        );

        // Get response
        String body = response.body();

        // Extract content from response
        int start = body.indexOf("\"content\":\"") + 11;
        int end = body.indexOf("\"", start);

        if (start >= 11 && end != -1) {
            String message2 = body.substring(start, end);
            System.out.println("Groq: " + message2);
        } else {
            System.out.println("Response: " + body);
        }

        sc.close();
    }
}