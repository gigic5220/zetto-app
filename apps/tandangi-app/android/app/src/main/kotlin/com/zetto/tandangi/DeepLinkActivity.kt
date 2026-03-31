package com.closerai.yoonseul

import android.app.Activity
import android.content.Intent
import android.net.Uri
import android.os.Bundle

class DeepLinkActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        forwardToMain(intent)
        finish()
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        forwardToMain(intent)
        finish()
    }

    private fun forwardToMain(sourceIntent: Intent) {
        val data: Uri? = sourceIntent.data

        val target = Intent(this, MainActivity::class.java).apply {
            action = Intent.ACTION_VIEW
            data?.let { this.data = it }

            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP)
        }

        startActivity(target)
    }
}
