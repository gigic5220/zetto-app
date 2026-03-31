import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.zetto.tandangi.dev"
            resValue(type = "string", name = "app_name", value = "tandangi dev")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.zetto.tandangi"
            resValue(type = "string", name = "app_name", value = "tandangi")
        }
    }
}