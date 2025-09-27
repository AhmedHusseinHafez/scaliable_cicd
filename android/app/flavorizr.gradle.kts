import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.company.scalablecicd.dev"
            resValue(type = "string", name = "app_name", value = "[Dev] ScalableCI|CD")
        }
        create("staging") {
            dimension = "flavor-type"
            applicationId = "com.company.scalablecicd.staging"
            resValue(type = "string", name = "app_name", value = "[Staging] ScalableCI|CD")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.company.scalablecicd"
            resValue(type = "string", name = "app_name", value = "ScalableCI|CD")
        }
    }
}