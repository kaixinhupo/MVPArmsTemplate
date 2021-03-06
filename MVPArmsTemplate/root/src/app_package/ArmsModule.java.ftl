package ${moudlePackageName};

<#if needActivity && needFragment>
import com.jess.arms.di.scope.ActivityScope;
<#elseif needActivity>
import com.jess.arms.di.scope.ActivityScope;
<#elseif needFragment>
import com.jess.arms.di.scope.FragmentScope;
</#if>

import android.content.Context;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;

import ${contractPackageName}.${pageName}Contract;
import ${modelPackageName}.${pageName}Model;

<#import "root://activities/MVPArmsTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
@Module
public abstract class ${pageName}Module {

    @ActivityScope
    @Provides
    static Context provideContext(${pageName}Contract.View view) {
        return view.getActivity();
    }
    
    @Binds
    abstract ${pageName}Contract.Model bind${pageName}Model(${pageName}Model model);
}
