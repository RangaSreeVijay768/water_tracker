package com.sevendotss.beebloom_water_tracker
import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.SharedPreferences
import android.net.Uri
import android.util.Log
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetBackgroundIntent
import es.antonborri.home_widget.HomeWidgetLaunchIntent
import es.antonborri.home_widget.HomeWidgetPlugin
import es.antonborri.home_widget.HomeWidgetProvider
import java.time.LocalDateTime
import java.time.LocalTime
import java.time.format.DateTimeFormatter

class HydromateHomeWidgetProvider:HomeWidgetProvider() {

    override fun onUpdate(context: Context, appWidgetManager: AppWidgetManager, appWidgetIds: IntArray, widgetData: SharedPreferences) {

        appWidgetIds.forEach { widgetId ->
            val views = RemoteViews(context.packageName, R.layout.hydromate_home_widget).apply {
                // Open App on Widget Click
                val pendingIntent = HomeWidgetLaunchIntent.getActivity(
                        context,
                        MainActivity::class.java)
 //               setOnClickPendingIntent(R.id.widget_container, pendingIntent)

                // Swap Title Text by calling Dart Code in the Backgr
                setTextViewText(R.id.set_quantity, widgetData.getString("quantity", null) ?: "250ml")
                setTextViewText(R.id.set_time, widgetData.getString("reminders", null) ?: "4:30 pm")
                setTextViewText(R.id.set_drink_water_text, widgetData.getString("selectedDrink", null) ?: "Water")
                setTextViewText(R.id.set_progress_text_done, widgetData.getString("progressMade", null) ?: "540ml")
                setTextViewText(R.id.set_progress_text_total, widgetData.getString("totalProgress", null) ?: "1l")
//                setTextViewText(R.id.quantity_text_label, widgetData.getString("quantity", null) ?: "250ml")
//                setTextViewText(R.id.today_text, widgetData.getString("todaysGoal", null)
//                        ?: "No Quantity Set")
//                setTextViewText(R.id.set_quantity, widgetData.getString("todaysGoal", null)
//                        ?: "No Goal Set")
//                val backgroundIntent = HomeWidgetBackgroundIntent.getBroadcast(
//                        context,
//                        Uri.parse("homeWidgetExample://titleClicked")
//                )
//                setOnClickPendingIntent(R.id.widget_title, backgroundIntent)
//
//                val message = widgetData.getString("message", null)
//                setTextViewText(R.id.widget_message, message
//                        ?: "No Message Set")
//                // Show Images saved with `renderFlutterWidget`
//                val image = widgetData.getString("dashIcon", null)
//                if (image != null) {
//                    setImageViewBitmap(R.id.widget_img, BitmapFactory.decodeFile(image))
//                    setViewVisibility(R.id.widget_img, View.VISIBLE)
//                } else {
//                    setViewVisibility(R.id.widget_img, View.GONE)
//                }
//
//                // Detect App opened via Click inside Flutter
//                val pendingIntentWithData = HomeWidgetLaunchIntent.getActivity(
//                        context,
//                        MainActivity::class.java,
//                        Uri.parse("homeWidgetExample://message?message=$message"))
//                setOnClickPendingIntent(R.id.widget_message, pendingIntentWithData)
            }

            Log.d("Widget",widgetId.toString());
            appWidgetManager.updateAppWidget(widgetId, views)

        }
    }
}
